import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'g2x_bottom_menu_item_model.g.dart';

class G2xBottomMenuItemModel = _G2xBottomMenuItem with _$G2xBottomMenuItemModel;

abstract class _G2xBottomMenuItem with Store {
  _G2xBottomMenuItem(this.idMenu, this.title, this.icon, this.selected);

  final int idMenu;
  final String title;
  final IconData icon;

  @observable
  var selected = false;

  @action
  selectItem(){
    this.selected = true;
  }

  @action
  removeSelection(){
    this.selected = false;
  }
}
  