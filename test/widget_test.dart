import 'package:customer/core/router/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  testWidgets('MyApp initializes with bottomNavigationScreen when user data is present', (final WidgetTester tester) async {
    // Build our app with the home screen route.
    //await tester.pumpWidget(const MyApp(initialRoute: AppRoutes.bottomNavigationScreen));

    // Retrieve the MaterialApp widget.
    final MaterialApp app = tester.widget(find.byType(MaterialApp));

    // Verify that the initialRoute is set correctly.
    expect(app.initialRoute, AppRoutes.bottomNavigationScreen);
  });

  testWidgets('MyApp initializes with language route when user data is absent', (final WidgetTester tester) async {
    // Build our app with the language screen route.
  //  await tester.pumpWidget(const MyApp(initialRoute: AppRoutes.language));

    // Retrieve the MaterialApp widget.
    final MaterialApp app = tester.widget(find.byType(MaterialApp));

    // Verify that the initialRoute is set correctly.
    expect(app.initialRoute, AppRoutes.language);
  });
}
