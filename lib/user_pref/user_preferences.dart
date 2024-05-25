import 'package:mobx/mobx.dart';

part 'user_preferences.g.dart';

class UserPreferences = _UserPreferences with _$UserPreferences;
abstract class _UserPreferences with Store {
  _UserPreferences({
    required this.favoriteCoffee,
    required this.favoriteSnack,
    required this.favoriteDessert,
  });
  @observable
  String favoriteCoffee;
  @observable
  String favoriteSnack;
  @observable
  String favoriteDessert;
  @action
  void setFavoriteCoffee(String value) {
    favoriteCoffee = value;
  }
  @action
  void setFavoriteSnack(String value) {
    favoriteSnack = value;
  }
  @action
  void setFavoriteDessert(String value) {
    favoriteDessert = value;
  }
}
