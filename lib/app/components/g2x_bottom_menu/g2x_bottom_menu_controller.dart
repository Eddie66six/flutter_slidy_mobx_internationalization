import 'package:mobx/mobx.dart';

import 'models/g2x_bottom_menu_item_model.dart';

part 'g2x_bottom_menu_controller.g.dart';

class G2xBottomMenuController = _G2xBottomMenuBase with _$G2xBottomMenuController;

abstract class _G2xBottomMenuBase with Store {
  @observable
  var itens = List<G2xBottomMenuItemModel>();

  @action
  void initItens(List<G2xBottomMenuItemModel> itens){
    this.itens = itens;
  }

  @action
  void selectMenu(int idMenu, Function callback) {
    //limpa os selecionados e seleciona o novo, depois chama a function que foi passada para o compnente
    for (var i = 0; i < itens.length; i++) {
      if(itens[i].idMenu == idMenu)
        itens[i].selectItem();
      else
        itens[i].removeSelection();
      print(itens[i].selected);
    }
    callback(idMenu);
  }
}
