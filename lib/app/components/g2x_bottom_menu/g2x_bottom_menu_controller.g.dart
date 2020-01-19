// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'g2x_bottom_menu_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$G2xBottomMenuController on _G2xBottomMenuBase, Store {
  final _$itensAtom = Atom(name: '_G2xBottomMenuBase.itens');

  @override
  List<G2xBottomMenuItemModel> get itens {
    _$itensAtom.context.enforceReadPolicy(_$itensAtom);
    _$itensAtom.reportObserved();
    return super.itens;
  }

  @override
  set itens(List<G2xBottomMenuItemModel> value) {
    _$itensAtom.context.conditionallyRunInAction(() {
      super.itens = value;
      _$itensAtom.reportChanged();
    }, _$itensAtom, name: '${_$itensAtom.name}_set');
  }

  final _$_G2xBottomMenuBaseActionController =
      ActionController(name: '_G2xBottomMenuBase');

  @override
  void initItens(List<G2xBottomMenuItemModel> itens) {
    final _$actionInfo = _$_G2xBottomMenuBaseActionController.startAction();
    try {
      return super.initItens(itens);
    } finally {
      _$_G2xBottomMenuBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectMenu(int idMenu, Function callback) {
    final _$actionInfo = _$_G2xBottomMenuBaseActionController.startAction();
    try {
      return super.selectMenu(idMenu, callback);
    } finally {
      _$_G2xBottomMenuBaseActionController.endAction(_$actionInfo);
    }
  }
}
