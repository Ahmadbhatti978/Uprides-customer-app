// // test/features/auth/repositories/auth_local_test.dart
// import 'dart:convert';
// import 'dart:developer';

// import 'package:customer/features/auth/model/user.dart';
// import 'package:customer/features/auth/model/user_detail.dart';
// import 'package:customer/features/auth/repositories/auth_local.dart';
// import 'package:customer/util/api/api_helper.dart';
// import 'package:customer/util/variable.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/annotations.dart'; // This import is needed for @GenerateMocks
// import 'package:mockito/mockito.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// // Place the annotation at the top level of the file
// @GenerateMocks(<Type>[SharedPreferences])
// import 'auth_local_test.mocks.dart';

// class MockNavigatorState extends Mock implements NavigatorState {
//   @override
//   Future<T?> pushNamedAndRemoveUntil<T extends Object?>(String newRouteName, RoutePredicate predicate, {Object? arguments}) {
//     // Simulate the navigation call for verification purposes
//     log('Mocked navigation to $newRouteName');
//     return Future.value();
//   }

//   @override
//   String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
//     return 'MockNavigatorState';
//   }
// }

// void mockUpdateFCMToken() {
//   log('Mocked updateFCMToken called');
// }

// void main() {
//   late MockSharedPreferences mockSharedPreferences;
//   // late MockNavigatorState mockNavigatorState;

//   // Sample Data for testing
//   const User testUser = User(id: '1', email: 'test@example.com', fullName: 'Test User');
//   const UserDetail testUserDetail = UserDetail(user: testUser, accessToken: 'access_token_123', refreshToken: 'refresh_token_456');
//   final String testUserDetailJson = jsonEncode(testUserDetail.toJson());
//   final Map<String, dynamic> testUserDetailMap = testUserDetail.toJson();

//   final Map<String, dynamic> testUserMap = testUser.toJson();
//   final User updatedTestUser = testUser.copyWith(fullName: 'Updated User');
//   final Map<String, dynamic> updatedTestUserMap = updatedTestUser.toJson();
//   final UserDetail updatedTestUserDetail = testUserDetail.copyWith(user: updatedTestUser);
//   final String updatedTestUserDetailJson = jsonEncode(updatedTestUserDetail.toJson());

//   setUp(() async {
//     // Create a new mock before each test
//     mockSharedPreferences = MockSharedPreferences();
//     //   mockNavigatorState = MockNavigatorState(); // Instantiate mock navigator

//     // --- Setup Global State & Dependencies ---
//     // Inject the mock SharedPreferences instance into AuthLocalRepo
//     AuthLocalRepo.prefs = mockSharedPreferences;

//     // Reset global variables before each test
//     guser = null;
//     userDetail = null;
//      Request.clientService.token = ''; // Assuming ClientService is accessible or mockable

//     // Assign the mock navigator state to the global key
//     // This is a simplified way; in a real app, you might need dependency injection
//     // or a more sophisticated way to handle global keys in tests.
//     // Create a new key for each test run to avoid state leakage.
//     navigatorKey = GlobalKey<NavigatorState>();
//     // This line is tricky because navigatorKey.currentState is often null in tests
//     // unless you pump a widget. A common workaround is to mock the state directly
//     // or use a testing setup that provides a navigator. For verifying the call,
//     // we'll rely on mocking the NavigatorState itself.
//     // A pragmatic approach for unit tests might be to *not* directly test the navigation
//     // call in AuthLocalRepo's unit test, focusing instead on data logic, and test
//     // navigation in integration tests. However, we'll try to mock it here.

//     // If updateFCMToken is a top-level function or static method you need to verify,
//     // you might need a different mocking strategy (like passing it as a dependency).
//     // For now, we assume it's called but don't verify its invocation directly in these unit tests.

//     // Default stubbing for SharedPreferences methods
//     when(mockSharedPreferences.getString(any)).thenReturn(null);
//     when(mockSharedPreferences.setString(any, any)).thenAnswer((_) async => true);
//     when(mockSharedPreferences.remove(any)).thenAnswer((_) async => true);
//     when(mockSharedPreferences.clear()).thenAnswer((_) async => true);
//     when(mockSharedPreferences.containsKey(any)).thenReturn(false);
//   });

//   tearDown(() {
//     // Clean up global state if necessary
//     guser = null;
//     userDetail = null;
//      Request.clientService.token = '';
//   });

//   // --- Test Cases ---

//   // Grouping tests for better organization
//   group('AuthLocalRepo Tests', () {
//     // Test init (mainly ensures SharedPreferences.getInstance is called, which is hard to test with static injection)
//     // This test is more conceptual with the current static setup.
//     // A better approach would involve dependency injection for SharedPreferences.
//     test('init initializes SharedPreferences (conceptual)', () async {
//       // Arrange: SharedPreferences.getInstance() is typically called outside the testable scope here
//       // Act: We manually set AuthLocalRepo.prefs in setUp()
//       // Assert: Verify prefs is not null (already done by setUp)
//       expect(AuthLocalRepo.prefs, isNotNull);
//       expect(AuthLocalRepo.prefs, isA<MockSharedPreferences>());
//     });

//     group('getUser', () {
//       test('returns UserDetail and sets globals when userRecord exists', () {
//         // Arrange
//         when(mockSharedPreferences.getString('userRecord')).thenReturn(testUserDetailJson);

//         // Act
//         final UserDetail? result = AuthLocalRepo.getUser();

//         // Assert
//         expect(result, isA<UserDetail>());
//         expect(result, equals(testUserDetail));
//         expect(guser, equals(testUser));
//         expect(userDetail, equals(testUserDetail));
//      //   expect( Request.clientService.token, equals('access_token_123'));
//         verify(mockSharedPreferences.getString('userRecord')).called(1);
//       });

//       test('returns null and resets token when userRecord does not exist', () {
//         // Arrange
//         when(mockSharedPreferences.getString('userRecord')).thenReturn(null);

//         // Act
//         final UserDetail? result = AuthLocalRepo.getUser();

//         // Assert
//         expect(result, isNull);
//         expect(guser, isNull);
//         // userDetail might remain null from setup or previous state if not explicitly reset inside getUser on null path
//         expect(userDetail, isNull);
//         expect( Request.clientService.token, equals(''));
//         verify(mockSharedPreferences.getString('userRecord')).called(1);
//       });

//       test('returns null and resets token when userRecord JSON is invalid', () {
//         // Arrange
//         when(mockSharedPreferences.getString('userRecord')).thenReturn('invalid json');

//         // Act & Assert
//         // Depending on json.decode error handling, it might throw or return null.
//         // Assuming userDetailFromJson handles errors gracefully and returns null or throws.
//         // If it throws, wrap in expect(()=>..., throwsA<FormatException>());
//         // Based on the provided AuthLocalRepo code, it seems it would try to parse, fail,
//         // and then proceed to the `if (userDetail != null)` check which would be false.
//         expect(() {
//           final UserDetail? result = AuthLocalRepo.getUser();
//           expect(result, isNull); // Expect null because parsing fails
//           expect(guser, isNull);
//           expect(userDetail, isNull);
//           expect( Request.clientService.token, equals(''));
//           verify(mockSharedPreferences.getString('userRecord')).called(1);
//         }, returnsNormally); // Or throwsA<FormatException>() if json.decode isn't caught
//       });
//     });

//     group('saveModel', () {
//       test('saves UserDetail object correctly', () {
//         // Arrange
//         when(mockSharedPreferences.setString('userRecord', testUserDetailJson)).thenAnswer((_) async => true);

//         // Act
//         AuthLocalRepo.saveModel(testUserDetail);

//         // Assert
//         verify(mockSharedPreferences.setString('userRecord', testUserDetailJson)).called(1);
//       });
//     });

//     group('saveModelString', () {
//       test('saves JSON string correctly', () async {
//         // Mark async
//         // Arrange
//         const String jsonString = '{"some":"json"}';
//         when(mockSharedPreferences.setString('userRecord', jsonString)).thenAnswer((_) async => true);

//         // Act
//         await AuthLocalRepo.saveModelString(jsonString); // await the call

//         // Assert
//         verify(mockSharedPreferences.setString('userRecord', jsonString)).called(1);
//       });
//     });

//     group('saveUserDetailMap', () {
//       test('saves map, updates globals, and returns UserDetail', () {
//         // Arrange
//         when(mockSharedPreferences.setString('userRecord', testUserDetailJson)).thenAnswer((_) async => true);
//         // Assume updateFCMToken exists and doesn't throw (or mock it if necessary)

//         // Act
//         final UserDetail result = AuthLocalRepo.saveUserDetailMap(testUserDetailMap);

//         // Assert
//         expect(result, isA<UserDetail>());
//         expect(result, equals(testUserDetail));
//         expect(guser, equals(testUser));
//         expect(userDetail, equals(testUserDetail));
//         expect( Request.clientService.token, equals('access_token_123'));
//         verify(mockSharedPreferences.setString('userRecord', testUserDetailJson)).called(1);
//         // Add verification for updateFCMToken if it's mockable/testable
//       });
//     });

//     group('saveUserMap', () {
//       test('updates existing UserDetail with new user map, saves, updates globals, and returns updated UserDetail', () {
//         // Arrange
//         // First, set an initial state as if a user is already logged in
//         userDetail = testUserDetail; // Set initial state
//         guser = testUser;
//          Request.clientService.token = testUserDetail.accessToken ?? '';

//         when(mockSharedPreferences.setString('userRecord', updatedTestUserDetailJson)).thenAnswer((_) async => true);
//         // Assume updateFCMToken exists

//         // Act
//         final UserDetail result = AuthLocalRepo.saveUserMap(updatedTestUserMap);

//         // Assert
//         expect(result, isA<UserDetail>());
//         expect(result, equals(updatedTestUserDetail)); // Check for the updated user detail
//         expect(guser, equals(updatedTestUser)); // Check for the updated user
//         expect(userDetail, equals(updatedTestUserDetail)); // Check global user detail
//         expect( Request.clientService.token, equals('access_token_123')); // Token shouldn't change here
//         verify(mockSharedPreferences.setString('userRecord', updatedTestUserDetailJson)).called(1);
//         // Add verification for updateFCMToken if needed
//       });

//       test('handles null initial userDetail gracefully (might create new UserDetail)', () {
//         // Arrange
//         // Initial state is null (from setUp)
//         final UserDetail expectedUserDetailFromMap = UserDetail(user: User.fromJson(testUserMap)); // Only user field is set
//         final String expectedJson = jsonEncode(expectedUserDetailFromMap.toJson());

//         when(mockSharedPreferences.setString('userRecord', expectedJson)).thenAnswer((_) async => true);

//         // Act
//         final UserDetail result = AuthLocalRepo.saveUserMap(testUserMap); // Save only user info

//         // Assert
//         // The behavior depends on how copyWith handles null. Assuming it creates a new object.
//         expect(result, isA<UserDetail>());
//         expect(result.user, equals(User.fromJson(testUserMap)));
//         expect(result.accessToken, isNull); // Access token would be null
//         expect(guser, equals(result.user));
//         expect(userDetail, equals(result));
//         expect( Request.clientService.token, isEmpty); // Token should be empty as it wasn't set
//         verify(mockSharedPreferences.setString('userRecord', expectedJson)).called(1);
//       });
//     });

//     group('removeUser', () {
//       // Test case for removing user when data exists
//       test('clears prefs, resets globals, and navigates when userRecord exists', () async {
//         // Arrange
//         // Set initial logged-in state
//         userDetail = testUserDetail;
//         guser = testUser;
//         when(mockSharedPreferences.containsKey('userRecord')).thenReturn(true);
//         when(mockSharedPreferences.clear()).thenAnswer((_) async => true); // Mock clear
//         when(mockSharedPreferences.remove('userRecord')).thenAnswer((_) async => true); // Mock remove

//         // Mock the navigatorKey's currentState
//         // This is challenging without a running app. A common approach is to mock the NavigatorState directly.
//         // We'll inject a mock NavigatorState for verification.
//         //      final mockNavigatorState = MockNavigatorState();
//         navigatorKey = GlobalKey<NavigatorState>(); // Recreate key
//         // This hack relies on being able to inject the mock state. This won't work
//         // perfectly without a widget tree but allows verifying the *intent* to navigate.
//         // In a real test, you'd likely use WidgetTester.
//         // For simplicity, we might just verify prefs calls and global state resets.

//         // Act
//         await AuthLocalRepo.removeUser();

//         // Assert
//         verify(mockSharedPreferences.containsKey('userRecord')).called(1);
//         verify(mockSharedPreferences.clear()).called(1); // Verify clear was called
//         verify(mockSharedPreferences.remove('userRecord')).called(1); // Verify remove was called
//         expect(guser, isNull);
//         expect(userDetail, isNull);
//         // Cannot easily verify navigation without WidgetTester or better mocking setup.
//         // verify(mockNavigatorState.pushNamedAndRemoveUntil(AppRoutes.language, any)).called(1); // This line is problematic in standard unit tests
//       });

//       test('does nothing if userRecord does not exist', () async {
//         // Arrange
//         when(mockSharedPreferences.containsKey('userRecord')).thenReturn(false);
//         // Ensure globals are null initially
//         guser = null;
//         userDetail = null;

//         // Act
//         await AuthLocalRepo.removeUser();

//         // Assert
//         verify(mockSharedPreferences.containsKey('userRecord')).called(1);
//         verifyNever(mockSharedPreferences.clear()); // Ensure clear wasn't called
//         verifyNever(mockSharedPreferences.remove('userRecord')); // Ensure remove wasn't called
//         expect(guser, isNull); // Should remain null
//         expect(userDetail, isNull); // Should remain null
//         // verifyNever(navigatorKey.currentState?.pushNamedAndRemoveUntil(any, any)); // Navigation should not happen
//       });
//     });
//   });
// }
