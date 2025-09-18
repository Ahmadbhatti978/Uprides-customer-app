import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/package.dart';

final StateProvider<Package> packageProvider = StateProvider<Package>((final Ref<Package> ref) => const Package());
