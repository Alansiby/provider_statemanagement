import 'package:flutter/material.dart';

class RegistrationScreenController with ChangeNotifier {
  //make the initianal statement as false
  bool isRegistration = false;

  onRegistration() {
    //if pressed on registration button then make the login as true
    isRegistration = true;
    notifyListeners();
  }
}
