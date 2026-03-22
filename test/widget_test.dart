import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:inicio_app/main.dart';

void main() {
  testWidgets('navigates to welcome page when button is tapped',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byKey(const ValueKey('openWelcomeButton')), findsOneWidget);
    expect(find.text('Welcome to my app'), findsNothing);

    await tester.tap(find.byKey(const ValueKey('openWelcomeButton')));
    await tester.pumpAndSettle();

    expect(find.byKey(const ValueKey('welcomeMessage')), findsOneWidget);
    expect(find.text('Welcome to my app'), findsOneWidget);
  });
}
