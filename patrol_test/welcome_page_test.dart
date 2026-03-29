//Teste

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

import 'package:inicio_app/main.dart';

void main() {
  patrolTest('opens the welcome page when the button is tapped', ($) async {
    await $.pumpWidgetAndSettle(const MyApp());

    expect(find.byKey(const ValueKey('openWelcomeButton')), findsOneWidget);
    expect(find.text('Welcome to my app'), findsNothing);

    await $(find.byKey(const ValueKey('openWelcomeButton'))).tap();
    await $.pumpAndSettle();

    expect(find.byKey(const ValueKey('welcomeMessage')), findsOneWidget);
    expect(find.text('Welcome to my app'), findsOneWidget);
  });
}
