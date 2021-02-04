import 'package:aula_teste/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// flutter test

void main() {
  testWidgets("should render all buttons in screen", (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: HomePage()));
    var btnIncrement = find.byKey(Key('btn_increment'));
    var btnDecrement = find.byKey(Key('btn_decrement'));
    var btnChangePage = find.byKey(Key('btn_change_page_2'));
    expect(btnIncrement, findsOneWidget);
    expect(btnDecrement, findsOneWidget);
    expect(btnChangePage, findsOneWidget);
  });

  testWidgets("should display default app bar title", (WidgetTester tester) async {
    String appBarTitle = 'App test';
    await tester.pumpWidget(MaterialApp(home: HomePage()));
    expect(find.text(appBarTitle), findsOneWidget);
  });

  testWidgets("should display the initial value on the screen", (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: HomePage()));
    expect(find.text("0"), findsOneWidget);
  });

  testWidgets("should display on the screen the correct value after incrementing", (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: HomePage()));
    var btnIncrement = find.byKey(Key('btn_increment'));
    await tester.tap(btnIncrement);
    await tester.pumpAndSettle();
    expect(find.text("1"), findsOneWidget);
  });

  testWidgets("should display on the screen the correct value after decrementing", (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: HomePage()));
    var btnDecrement = find.byKey(Key('btn_decrement'));
    await tester.tap(btnDecrement);
    await tester.pumpAndSettle();
    expect(find.text("-1"), findsOneWidget);
  });

  //Golden test
  testWidgets('Golden test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: HomePage()));
    await expectLater(find.byType(MaterialApp), matchesGoldenFile('main.png'));
  });
}
