import 'package:flutter/material.dart';
import 'package:flutter_slidy_mobx/app/componens/g2x_bottom_menu/g2x_bottom_menu_widget.dart';
import 'package:flutter_slidy_mobx/app/componens/g2x_bottom_menu/models/g2x_bottom_menu.model.dart';
import 'package:flutter_slidy_mobx/app/localization.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<G2xBottomMenu> menus;
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
    menus = List<G2xBottomMenu>();
    for (var i = 0; i < 4; i++) {
      menus.add(G2xBottomMenu(i,Icons.ac_unit, "titulo " + i.toString()));
    }
  }

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
          G2xBottomMenuWidget(menus)
        ],
      ),
    );
  }
}
