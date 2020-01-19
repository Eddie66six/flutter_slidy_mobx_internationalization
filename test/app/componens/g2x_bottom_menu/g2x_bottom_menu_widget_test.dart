import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:flutter_slidy_mobx/app/componens/g2x_bottom_menu/g2x_bottom_menu_widget.dart';

main() {
  testWidgets('G2xBottomMenuWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(G2xBottomMenuWidget()));
    final textFinder = find.text('G2xBottomMenu');
    expect(textFinder, findsOneWidget);
  });
}
