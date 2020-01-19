import 'package:flutter/material.dart';

import 'models/g2x_bottom_menu.model.dart';

class G2xBottomMenuWidget extends StatelessWidget {
  final List<G2xBottomMenu> itens;
  final Function click;
  const G2xBottomMenuWidget(this.itens, this.click);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        //alinhamento para dividir o espaço entre os itens
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //percorre a lista de menus
        children: List.generate(itens.length, (index)=>
          InkWell(
            onTap: () => click(itens[index].idMenu),
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(color: Colors.red),
              child: Column(
                children: <Widget>[
                  Icon(itens[index].icon),
                  Text(itens[index].title)
                ],
              ),
            ),
          )
        )
      ),
    );
  }
}
