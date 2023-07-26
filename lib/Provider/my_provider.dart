import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier{
  String langCode='en';
  void changeLang(String lang){
    langCode=lang;
    notifyListeners();
  }
}