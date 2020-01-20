import 'package:flutter/material.dart';

class G2xButtomWidget extends StatelessWidget {
  final Function click;
  final String text;
  final Color color;
  const G2xButtomWidget(this.click, this.text, this.color);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      child: InkWell(
        onTap: click,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Center(child: Text(text)),
        ),
      ),
    );
  }
}
