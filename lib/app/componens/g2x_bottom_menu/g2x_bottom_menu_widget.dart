import 'package:flutter/material.dart';

import 'models/g2x_bottom_menu.model.dart';

class G2xBottomMenuWidget extends StatelessWidget {
  final List<G2xBottomMenu> itens;
  const G2xBottomMenuWidget(this.itens);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        //alinhamento para dividir o espaço entre os itens
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        //percorre a lista de menus
        children: List.generate(itens.length, (index)=>
          Column(
            children: <Widget>[
              Icon(itens[index].icon),
              Text(itens[index].title)
            ],
          )
        )
      ),
    );
  }
}
