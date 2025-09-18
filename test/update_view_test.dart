import 'package:customer/config/cta/update_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';
 

void main() {
  testWidgets('UpdateView displays scheduled time correctly', (WidgetTester tester) async {
    // ARRANGE: Define the arguments and the route name.
    final testTime = DateTime(2025, 9, 1, 14, 30); // 2:30 PM
    final args = testTime;
    const updateRoute = '/update-view';

    // 1. Set up the app with a route that builds UpdateView.
    await tester.pumpWidget(
      MaterialApp(
        onGenerateRoute: (settings) {
          if (settings.name == updateRoute) {
            return MaterialPageRoute(
              builder: (context) => const UpdateView(),
              settings: RouteSettings(name: updateRoute, arguments: args),
            );
          }
          return null;
        },
        // Provide a home route so the app has something to show initially.
        home: const Scaffold(body: Text('Initial Screen')),
      ),
    );

    // 2. ACT: Properly navigate to the UpdateView screen.
    await tester.tap(find.byType(Scaffold)); // Simulate an action to trigger navigation
    await tester.runAsync(() async {
      final NavigatorState navigator = Navigator.of(tester.element(find.byType(Scaffold)));
      await navigator.pushNamed(updateRoute);
    });
    await tester.pumpAndSettle(); // Wait for navigation and animations to complete.

    // 3. PREDICT THE OUTPUT: Format the time exactly as the widget does.
    // The UpdateView uses DateFormat.jm(), which produces output like "2:30 PM".
    final String expectedFormattedTime = DateFormat.jm().format(testTime);

    // 4. ASSERT: Look for the actual text that should be rendered on the screen.
    // NOTE: This assumes your final text is the localization key with the time appended
    // or that the localization resolves to a string containing the time.
    // Adjust the finder if your localization string is different.
    expect(find.textContaining(expectedFormattedTime, findRichText: true), findsOneWidget);
  });
}