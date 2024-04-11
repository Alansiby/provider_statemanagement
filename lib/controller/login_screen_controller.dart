import 'package:flutter/material.dart';

class LoginScreenController with ChangeNotifier {
  //make the initianal statement as false
  bool isLogged = false;

  onlogin() {
    //if pressed on login button then make the login as true
    isLogged = true;
    notifyListeners();
  }
}
