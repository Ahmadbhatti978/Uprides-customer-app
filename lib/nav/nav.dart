import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../core/router/route.dart';
import '../features/account/account.dart';
import '../features/activity/activity.dart';
import '../features/home/presentation/home.dart';
import '../util/image_assets.dart';
import '../util/style/typo.dart';
import '../util/variable.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  // Keep track of current tab index
  int _currentIndex = 0;

  // Define screens at state level for better management
  static const List<Widget> _screens = <Widget>[
    Home(),
    //  Services(),
    Activity(), Account(),
  ];

  @override
  Widget build(final BuildContext context) {
    currentRoute = AppRoutes.bottomNavigationScreen;
    return Stack(
      children: <Widget>[
        Scaffold(key: GlobalKey<ScaffoldState>(), body: _screens[_currentIndex], bottomNavigationBar: _buildBottomNavigationBar()),
        // FloatingActionButton(
        //   child: Icon(Icons.work),
        //   onPressed: () {
        //     // Action for current job
        //   },
        // ),
      ],
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() => BottomNavigationBar(
    elevation: 16,
    selectedFontSize: 16,
    unselectedFontSize: 15.5,
    selectedLabelStyle: Primary.titleLarge,
    unselectedItemColor: const Color.fromRGBO(119, 119, 119, 1),
    unselectedLabelStyle: Secondary.titleBig,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.black,
    backgroundColor: Colors.white,
    currentIndex: _currentIndex,
    onTap: (final int index) => setState(() => _currentIndex = index),
    items: _buildNavigationItems(),
  );

  List<BottomNavigationBarItem> _buildNavigationItems() => <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      activeIcon: const Icon(Icons.home, size: 25),
      icon: const Icon(Icons.home_outlined, size: 24, color: Color.fromRGBO(119, 119, 119, 1)),
      tooltip: l10n.home,
      label: l10n.home,
    ),
    // BottomNavigationBarItem(
    //   activeIcon: SvgPicture.asset(chat, height: 25, colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn), semanticsLabel: l10n.services),
    //   icon: SvgPicture.asset(
    //     chat,
    //     height: 24,
    //     colorFilter: const ColorFilter.mode(Color.fromRGBO(119, 119, 119, 1), BlendMode.srcIn),
    //     semanticsLabel: l10n.services,
    //   ),
    //   label: l10n.services,
    // ),
    BottomNavigationBarItem(
      activeIcon: SvgPicture.asset(activityFilled, height: 25, semanticsLabel: 'Activity'),
      icon: SvgPicture.asset(activity, height: 24, semanticsLabel: 'Activity'),
      label: l10n.activity,
      tooltip: l10n.activity,
    ),
    BottomNavigationBarItem(activeIcon: const Icon(Icons.person, size: 25), icon: const Icon(Icons.person_outline), tooltip: l10n.account, label: l10n.account),
  ];
}

class DraggableJobButton extends StatefulWidget {
  const DraggableJobButton({super.key});

  @override
  State<DraggableJobButton> createState() => _DraggableJobButtonState();
}

class _DraggableJobButtonState extends State<DraggableJobButton> {
  double _positionY = 100;
  double _positionX = 100;
  final bool _isVisible = true;

  @override
  Widget build(final BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return AnimatedPositioned(
      curve: Curves.easeOutBack,
      top: _positionY,
      left: (_positionX - 16).abs(),
      height: 40,
      width: 96,
      onEnd: () {
        if (!(_positionX == 0 || _positionX == screenWidth - 50)) {
          setState(() {
            _positionX = _positionX < screenWidth / 2 ? 0 : screenWidth - 50;
          });
        }
      },
      duration: _positionX == 0 || _positionX == screenWidth - 50 ? const Duration(milliseconds: 200) : Duration.zero,
      child: Draggable(
        feedbackOffset: const Offset(100, 200),
        affinity: Axis.horizontal,
        childWhenDragging: const SizedBox.shrink(),
        feedback: _buildButtonContainer(),
        child: _buildButtonContainer(),
        onDragEnd: (final DraggableDetails details) {
          setState(() {
            _positionY = details.offset.dy;
            _positionX = details.offset.dx;
          });
        },
      ),
    );
  }

  Widget _buildButtonContainer() => Visibility(
    visible: _isVisible,
    child: Container(
      decoration: const ShapeDecoration(color: Colors.blueAccent, shape: StadiumBorder()),
      height: 40,
      width: 96,
      padding: const EdgeInsets.fromLTRB(2, 2, 13, 2),
      child: Row(children: <Widget>[const CircleAvatar(radius: 20), const Spacer(), Text(l10n.job, style: const TextStyle(color: Colors.white))]),
    ),
  );
}
