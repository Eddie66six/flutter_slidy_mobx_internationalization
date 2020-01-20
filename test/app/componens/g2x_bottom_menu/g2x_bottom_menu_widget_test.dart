import 'package:flutter_slidy_mobx/app/components/g2x_bottom_menu/g2x_bottom_menu_widget.dart';
import 'package:flutter_slidy_mobx/app/components/g2x_bottom_menu/models/g2x_bottom_menu_item_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

main() {
  testWidgets('G2xBottomMenuWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(G2xBottomMenuWidget(List<G2xBottomMenuItemModel>(), (){})));
    final textFinder = find.text('G2xBottomMenu');
    expect(textFinder, findsOneWidget);
  });
}
