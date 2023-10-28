import 'package:flutter/material.dart';

class CartModel
    extends ChangeNotifier //stellt sicher, dass alle Widgets die betroffen sind über Änderungen bescheid bekommen
{
  int nudelsuppe = 0;
  int festival = 0;

  void addNudelsuppe() {
    nudelsuppe++;
    notifyListeners();
  }

  void removeNudelsuppe() {
    if (nudelsuppe > 0) {
      nudelsuppe--;
      notifyListeners();
    }
  }

  //Aus Warenkorb entfernen
  void clearNudelsuppe() {
    nudelsuppe = 0;
    notifyListeners();
  }

  void addFestival() {
    festival++;
    notifyListeners();
  }

  void removeFestival() {
    if (festival > 0) {
      festival--;
      notifyListeners();
    }
  }

  //Aus Warenkorb entfernen
  void clearfestival() {
    festival = 0;
    notifyListeners();
  }

  int get totalItems => festival + nudelsuppe;
}
