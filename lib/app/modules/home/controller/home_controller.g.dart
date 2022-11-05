// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on _HomeControllerBase, Store {
  late final _$widthAtom =
      Atom(name: '_HomeControllerBase.width', context: context);

  @override
  double get width {
    _$widthAtom.reportRead();
    return super.width;
  }

  @override
  set width(double value) {
    _$widthAtom.reportWrite(value, super.width, () {
      super.width = value;
    });
  }

  late final _$marginBottomAtom =
      Atom(name: '_HomeControllerBase.marginBottom', context: context);

  @override
  double get marginBottom {
    _$marginBottomAtom.reportRead();
    return super.marginBottom;
  }

  @override
  set marginBottom(double value) {
    _$marginBottomAtom.reportWrite(value, super.marginBottom, () {
      super.marginBottom = value;
    });
  }

  late final _$navBarIsOpenAtom =
      Atom(name: '_HomeControllerBase.navBarIsOpen', context: context);

  @override
  bool get navBarIsOpen {
    _$navBarIsOpenAtom.reportRead();
    return super.navBarIsOpen;
  }

  @override
  set navBarIsOpen(bool value) {
    _$navBarIsOpenAtom.reportWrite(value, super.navBarIsOpen, () {
      super.navBarIsOpen = value;
    });
  }

  late final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase', context: context);

  @override
  dynamic changeNavBar() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changeNavBar');
    try {
      return super.changeNavBar();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
width: ${width},
marginBottom: ${marginBottom},
navBarIsOpen: ${navBarIsOpen}
    ''';
  }
}
