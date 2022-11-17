import 'package:flutter/material.dart';

class FavoriteProvider with ChangeNotifier {
  //declare a list of favorite contacts
  List<int> favoriteContacts = [];
  List<int> get favorites => favoriteContacts;

  //create a method to add fovorite contacts
  addFavorite(int index) {
    favoriteContacts.add(index);
  }

  //create a method to remove favorite contacts
  removeFavorite(int index) {
    favoriteContacts.removeAt(index);
    notifyListeners();
  }
}
