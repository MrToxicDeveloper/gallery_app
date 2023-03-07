import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier{
  int i = 1;

  void select(int value){
    i = value;
    notifyListeners();
  }
}