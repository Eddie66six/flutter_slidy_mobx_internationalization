import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:flutter_slidy_mobx/app/componens/g2x_bottom_menu/g2x_bottom_menu_controller.dart';
import 'package:flutter_slidy_mobx/app/app_module.dart';

void main() {
  initModule(AppModule());
  G2xBottomMenuController g2xbottommenu;

  setUp(() {
    g2xbottommenu = AppModule.to.get<G2xBottomMenuController>();
  });

  group('G2xBottomMenuController Test', () {
    test("First Test", () {
      expect(g2xbottommenu, isInstanceOf<G2xBottomMenuController>());
    });

    test("Set Value", () {
      expect(g2xbottommenu.value, equals(0));
      g2xbottommenu.increment();
      expect(g2xbottommenu.value, equals(1));
    });
  });
}
