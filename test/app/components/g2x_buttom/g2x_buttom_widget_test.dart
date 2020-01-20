import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:flutter_slidy_mobx/app/components/g2x_buttom/g2x_buttom_widget.dart';

main() {
  testWidgets('G2xButtomWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(G2xButtomWidget((){}, "", Colors.red)));
    final textFinder = find.text('G2xButtom');
    expect(textFinder, findsOneWidget);
  });
}
