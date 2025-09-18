import 'package:flutter_riverpod/flutter_riverpod.dart';

final petProvider = AutoDisposeStateProvider<bool>((ref) => false);
final assistProvider = AutoDisposeStateProvider<bool>((ref) => false);

const String petTypeID = "686d140662771ee16680bdea";
const String assistTypeID = "686d143262771ee16680bdfa";
const double switchScale = 0.6;
const double itemHeight = 83;
