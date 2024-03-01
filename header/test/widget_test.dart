import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
// ignore: unused_import
import 'package:header/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Construisez notre application et déclenchez un frame.
    await tester.pumpWidget(MyApp() as Widget);

    // Vérifiez que notre compteur démarre à 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Appuyez sur l'icône '+' et déclenchez un frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Vérifiez que notre compteur a été incrémenté.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}

class MyApp {
}
