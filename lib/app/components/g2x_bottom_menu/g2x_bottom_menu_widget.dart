import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'g2x_bottom_menu_controller.dart';
import 'models/g2x_bottom_menu_item_model.dart';

class G2xBottomMenuWidget extends StatelessWidget {
  final List<G2xBottomMenuItemModel> itens;
  final Function click;
  const G2xBottomMenuWidget(this.itens, this.click);

  

  @override
  Widget build(BuildContext context) {
    var controller = G2xBottomMenuController();
    controller.initItens(itens);
    return 
    Observer(
        builder: (_) => 
    Container(
      child: Row(
          //alinhamento para dividir o espaço entre os itens
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //percorre a lista de menus
          children: List.generate(controller.itens.length, (index)=>
          //detecta o click
            InkWell(
              onTap: () {
                controller.selectMenu(controller.itens[index].idMenu, click);
              },
              child: Container(
                //MediaQuery.of(context).size obtem o size da tela
                width: MediaQuery.of(context).size.width/ controller.itens.length,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: controller.itens[index].selected ? Colors.red : Colors.grey
                ),
                child: Column(
                  children: <Widget>[
                    Icon(controller.itens[index].icon),
                    Text(controller.itens[index].title)
                  ],
                ),
              ),
            )
          )
        ),
      ),
    );
  }
}
