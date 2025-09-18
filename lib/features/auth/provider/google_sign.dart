// Provider for GoogleSignIn instance with async initialization
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
      part 'google_sign.g.dart';                                                                                                                              
@Riverpod(keepAlive: true)
Future<GoogleSignIn> googleSignIn(Ref ref) async {
  final GoogleSignIn googleSignIn = GoogleSignIn.instance;
  await googleSignIn.initialize();
  return googleSignIn;
}