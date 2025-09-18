import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'no_internet_view.dart';

class ConnectivityBannerWrapper extends StatefulWidget {
  const ConnectivityBannerWrapper({required this.child, super.key});
  final Widget child;

  @override
  State<ConnectivityBannerWrapper> createState() => _ConnectivityBannerWrapperState();
}

class _ConnectivityBannerWrapperState extends State<ConnectivityBannerWrapper> {
  final Connectivity _connectivity = Connectivity();
  late final InternetConnectionChecker _checker;
  late final StreamSubscription<List<ConnectivityResult>> _connSub;
  late final Timer _timer;

  bool _noInternet = false;
  bool _unstable = false;

  @override
  void initState() {
    super.initState();

    // ✅ Use singleton instance
    _checker = InternetConnectionChecker.instance;

    // ✅ Subscribe to network changes
    _connSub = _connectivity.onConnectivityChanged.listen(_onConnectivityChanged);

    // ✅ Check periodically for instability
    _timer = Timer.periodic(const Duration(seconds: 1), (_) => _checkStability());

    // ✅ Initial check
    _initialCheck();
  }

  Future<void> _initialCheck() async {
    final List<ConnectivityResult> results = await _connectivity.checkConnectivity();
    await _onConnectivityChanged(results);
  }

  Future<void> _onConnectivityChanged(List<ConnectivityResult> results) async {
    final bool hasInternet = await _checker.hasConnection;
    final bool hasNetwork = results.any((r) => r != ConnectivityResult.none);

    if (mounted) {
      setState(() {
        _noInternet = !hasNetwork || !hasInternet;
        _unstable = hasNetwork && !hasInternet;
      });
    }
  }

  Future<void> _checkStability() async {
    final bool hasInternet = await _checker.hasConnection;

    if (!_noInternet && !hasInternet) {
      if (mounted) {
        setState(() {
          _unstable = true;
        });
      }
    } else if (hasInternet && _unstable) {
      if (mounted) {
        setState(() {
          _unstable = false;
        });
      }
    }
  }

  @override
  void dispose() {
    _connSub.cancel();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Stack(
    children: [
      widget.child,
      if (_noInternet) const NoInternetView(),
      if (!_noInternet && _unstable) _buildBanner("Your connection is unstable. Please check your network and try again.", Colors.red),
    ],
  );

  Widget _buildBanner(String message, Color color) => Positioned(
    top: 0,
    left: 0,
    right: 0,
    child: SafeArea(
      bottom: false,
      child: MaterialBanner(
        backgroundColor: color,
        content: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          color: color,
          child: Row(
            children: [
              const Icon(Icons.warning_rounded, color: Colors.white, size: 32),
              const Gap(8),
              Expanded(
                child: Text(
                  message,
                  style: const TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Open', fontVariations: [FontVariation('wght', 600)]),
                ),
              ),
            ],
          ),
        ),
        actions: const [SizedBox()],
      ),
    ),
  );
}
