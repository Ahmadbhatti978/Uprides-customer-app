import 'package:flutter_riverpod/flutter_riverpod.dart';

final AutoDisposeStateProvider<bool> gloading = AutoDisposeStateProvider<bool>((ref) => false);