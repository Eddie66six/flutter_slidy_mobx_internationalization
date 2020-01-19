import 'package:flutter/material.dart';
import 'package:flutter_slidy_mobx/app/components/g2x_bottom_menu/g2x_bottom_menu_widget.dart';
import 'package:flutter_slidy_mobx/app/components/g2x_bottom_menu/models/g2x_bottom_menu_item_model.dart';
import 'package:flutter_slidy_mobx/app/components/g2x_buttom/g2x_buttom_widget.dart';
import 'package:flutter_slidy_mobx/app/localization.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<G2xBottomMenuItemModel> menus;
  alterLocale(){
    CustomLocalizations.of(context).load(Locale('tr', 'TR')).then((bool ok){
        if(ok){
          setState(() {});
        }
    });
  }

  @override
  void initState() {
    super.initState();
    menus = List<G2xBottomMenuItemModel>();
    for (var i = 0; i < 4; i++) {
      menus.add(G2xBottomMenuItemModel(i, "titulo " + i.toString(), Icons.ac_unit, i == 0));
    }
  }

  void click(){
    print("click");
  }

  var controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(CustomLocalizations.of(context).trans('hello_world')),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("click"),
            onPressed: alterLocale,
          ),
          G2xBottomMenuWidget(menus, controller.menuClick),
          G2xButtomWidget(click, "exemplo click", Colors.green)
        ],
      ),
    );
  }
}
