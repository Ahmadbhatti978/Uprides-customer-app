import 'dart:async';

import 'package:customer/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('dummy test to launch app', (tester) async {
    unawaited(app.main());
    await tester.pumpAndSettle();
    //  expect(find.byType(SomeRootWidget), findsOneWidget);
  });
}
