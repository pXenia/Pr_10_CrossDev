// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preferences.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserPreferences on _UserPreferences, Store {
  late final _$favoriteCoffeeAtom =
      Atom(name: '_UserPreferences.favoriteCoffee', context: context);

  @override
  String get favoriteCoffee {
    _$favoriteCoffeeAtom.reportRead();
    return super.favoriteCoffee;
  }

  @override
  set favoriteCoffee(String value) {
    _$favoriteCoffeeAtom.reportWrite(value, super.favoriteCoffee, () {
      super.favoriteCoffee = value;
    });
  }

  late final _$favoriteSnackAtom =
      Atom(name: '_UserPreferences.favoriteSnack', context: context);

  @override
  String get favoriteSnack {
    _$favoriteSnackAtom.reportRead();
    return super.favoriteSnack;
  }

  @override
  set favoriteSnack(String value) {
    _$favoriteSnackAtom.reportWrite(value, super.favoriteSnack, () {
      super.favoriteSnack = value;
    });
  }

  late final _$favoriteDessertAtom =
      Atom(name: '_UserPreferences.favoriteDessert', context: context);

  @override
  String get favoriteDessert {
    _$favoriteDessertAtom.reportRead();
    return super.favoriteDessert;
  }

  @override
  set favoriteDessert(String value) {
    _$favoriteDessertAtom.reportWrite(value, super.favoriteDessert, () {
      super.favoriteDessert = value;
    });
  }

  late final _$_UserPreferencesActionController =
      ActionController(name: '_UserPreferences', context: context);

  @override
  void setFavoriteCoffee(String value) {
    final _$actionInfo = _$_UserPreferencesActionController.startAction(
        name: '_UserPreferences.setFavoriteCoffee');
    try {
      return super.setFavoriteCoffee(value);
    } finally {
      _$_UserPreferencesActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFavoriteSnack(String value) {
    final _$actionInfo = _$_UserPreferencesActionController.startAction(
        name: '_UserPreferences.setFavoriteSnack');
    try {
      return super.setFavoriteSnack(value);
    } finally {
      _$_UserPreferencesActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFavoriteDessert(String value) {
    final _$actionInfo = _$_UserPreferencesActionController.startAction(
        name: '_UserPreferences.setFavoriteDessert');
    try {
      return super.setFavoriteDessert(value);
    } finally {
      _$_UserPreferencesActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
favoriteCoffee: ${favoriteCoffee},
favoriteSnack: ${favoriteSnack},
favoriteDessert: ${favoriteDessert}
    ''';
  }
}
