// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$currentIndexAtom = Atom(name: '_HomeControllerBase.currentIndex');

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  final _$textFieldControllerAtom =
      Atom(name: '_HomeControllerBase.textFieldController');

  @override
  TextEditingController get textFieldController {
    _$textFieldControllerAtom.reportRead();
    return super.textFieldController;
  }

  @override
  set textFieldController(TextEditingController value) {
    _$textFieldControllerAtom.reportWrite(value, super.textFieldController, () {
      super.textFieldController = value;
    });
  }

  final _$worldAtom = Atom(name: '_HomeControllerBase.world');

  @override
  World get world {
    _$worldAtom.reportRead();
    return super.world;
  }

  @override
  set world(World value) {
    _$worldAtom.reportWrite(value, super.world, () {
      super.world = value;
    });
  }

  final _$countryAtom = Atom(name: '_HomeControllerBase.country');

  @override
  Country get country {
    _$countryAtom.reportRead();
    return super.country;
  }

  @override
  set country(Country value) {
    _$countryAtom.reportWrite(value, super.country, () {
      super.country = value;
    });
  }

  final _$getInfoWorldAsyncAction =
      AsyncAction('_HomeControllerBase.getInfoWorld');

  @override
  Future getInfoWorld() {
    return _$getInfoWorldAsyncAction.run(() => super.getInfoWorld());
  }

  final _$getInfoCountryAsyncAction =
      AsyncAction('_HomeControllerBase.getInfoCountry');

  @override
  Future getInfoCountry({String countryName = "brazil"}) {
    return _$getInfoCountryAsyncAction
        .run(() => super.getInfoCountry(countryName: countryName));
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic changePage(int index) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changePage');
    try {
      return super.changePage(index);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentIndex: ${currentIndex},
textFieldController: ${textFieldController},
world: ${world},
country: ${country}
    ''';
  }
}
