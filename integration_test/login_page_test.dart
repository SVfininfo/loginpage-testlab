import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:login_page/main.dart' as app;

void main() {
  group('app test', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    testWidgets('login page', (tester) async{
      app.main();
      await tester.pumpAndSettle();
      final emailFormField = find.byType(TextFormField).first;
      final passwordFormField = find.byType(TextFormField).last;
      final loginButton = find.byKey(Key("login"));
      await Future.delayed(const Duration(seconds: 5));
      await tester.enterText(emailFormField, 'vamshi1@fininfocom.com');
      await Future.delayed(const Duration(seconds: 5));
      await tester.enterText(passwordFormField, 'epos1234');
      await tester.pumpAndSettle();

      await Future.delayed(const Duration(seconds: 5));
      await tester.tap(loginButton);
      await tester.pumpAndSettle(const Duration(seconds: 5));

      final loginepos = find.byKey(Key("loginepos"));
      await tester.tap(loginepos);
      await tester.pumpAndSettle(const Duration(seconds: 8));
       // final back_to_finlogin = find.byKey(Key("back to finlogin"));
       // await tester.tap(back_to_finlogin);
       // await tester.pumpAndSettle(const Duration(seconds: 5));
      final eposemail = find.byType(TextFormField).first;
      final epospassword = find.byType(TextFormField).last;
      final eposlogin = find.byKey(const Key("epos login"));
      await Future.delayed(const Duration(seconds: 4));
      await tester.enterText(eposemail, 'vamshi1@fininfocom.com');
      await Future.delayed(const Duration(seconds: 4));
      await tester.enterText(epospassword, 'epos1234');
      await tester.pumpAndSettle(const Duration(seconds: 5));
      await tester.tap(eposlogin);
      await tester.pumpAndSettle(const Duration(seconds: 5));

      // final back2 fin home = find.byKey(Key("back2 fin home"));
      // await tester.tap(back2 fin home);
      // await tester.pumpAndSettle(const Duration(seconds: 5));

      final back_to_epos_login = find.byKey(Key("back to epos login"));
      await tester.tap(back_to_epos_login);
      await tester.pumpAndSettle(const Duration(seconds: 5));

    });
  });
}