// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/controller/home_screen_controller.dart';
import 'package:provider_statemanagement/controller/login_screen_controller.dart';
import 'package:provider_statemanagement/controller/registration_screen_controller.dart';
import 'package:provider_statemanagement/view/getstarted_screen/getstarted_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => HomeScreenController(),
          ),
          ChangeNotifierProvider(
            create: (context) => LoginScreenController(),
          ),
          ChangeNotifierProvider(
            create: (context) => RegistrationScreenController(),
          ),
        ],
        child: MaterialApp(
          home: GetStartedScreen(),
        ));
  }
}
