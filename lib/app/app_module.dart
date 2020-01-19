import 'package:flutter_slidy_mobx/app/componens/g2x_bottom_menu/g2x_bottom_menu_controller.dart';
import 'package:flutter_slidy_mobx/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidy_mobx/app/app_widget.dart';
import 'package:flutter_slidy_mobx/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => G2xBottomMenuController()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
