import 'package:flutter/material.dart';
import 'package:flutter_slidy_mobx/app/localization.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  alterLocale(){
    setState(() {
      CustomLocalizations.of(context).load(Locale('tr', 'TR'));
    });
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
          )
        ],
      ),
    );
  }
}
