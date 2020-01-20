import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_slidy_mobx/app/components/g2x_buttom/g2x_buttom_controller.dart';
import 'package:flutter_slidy_mobx/app/app_module.dart';

void main() {
  initModule(AppModule());
  G2xButtomController g2xbuttom;

  setUp(() {
    g2xbuttom = AppModule.to.get<G2xButtomController>();
  });

  group('G2xButtomController Test', () {
    test("First Test", () {
      expect(g2xbuttom, isInstanceOf<G2xButtomController>());
    });

    // test("Set Value", () {
    //   expect(g2xbuttom.value, equals(0));
    //   g2xbuttom.increment();
    //   expect(g2xbuttom.value, equals(1));
    // });
  });
}
