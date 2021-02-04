import 'package:aula_teste/pages/home_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter/material.dart';

//flutter drive --driver=test_driver/integration_test.dart --target=integration_test/complete_app_test.dart

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Complete app happy test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: HomePage()));

    var btnChangePage2 = find.byKey(Key('btn_change_page_2'));
    expect(btnChangePage2, findsOneWidget);
    await tester.tap(btnChangePage2);
    await tester.pumpAndSettle();

    var btnChangePage3 = find.byKey(Key('btn_change_page_39'));
    expect(btnChangePage3, findsOneWidget);
    await tester.tap(btnChangePage3);
    await tester.pumpAndSettle();

    await tester.pageBack();
    await tester.pumpAndSettle();

    await tester.pageBack();
    await tester.pumpAndSettle();
  });
}
