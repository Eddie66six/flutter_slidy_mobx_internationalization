// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'g2x_bottom_menu_item_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$G2xBottomMenuItemModel on _G2xBottomMenuItem, Store {
  final _$selectedAtom = Atom(name: '_G2xBottomMenuItem.selected');

  @override
  bool get selected {
    _$selectedAtom.context.enforceReadPolicy(_$selectedAtom);
    _$selectedAtom.reportObserved();
    return super.selected;
  }

  @override
  set selected(bool value) {
    _$selectedAtom.context.conditionallyRunInAction(() {
      super.selected = value;
      _$selectedAtom.reportChanged();
    }, _$selectedAtom, name: '${_$selectedAtom.name}_set');
  }

  final _$_G2xBottomMenuItemActionController =
      ActionController(name: '_G2xBottomMenuItem');

  @override
  dynamic selectItem() {
    final _$actionInfo = _$_G2xBottomMenuItemActionController.startAction();
    try {
      return super.selectItem();
    } finally {
      _$_G2xBottomMenuItemActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeSelection() {
    final _$actionInfo = _$_G2xBottomMenuItemActionController.startAction();
    try {
      return super.removeSelection();
    } finally {
      _$_G2xBottomMenuItemActionController.endAction(_$actionInfo);
    }
  }
}
