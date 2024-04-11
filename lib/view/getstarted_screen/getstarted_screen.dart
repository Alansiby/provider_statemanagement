// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/controller/login_screen_controller.dart';

import 'package:provider_statemanagement/view/login_screen/login_screen.dart';
import 'package:provider_statemanagement/view/registration_screen/registration_screen.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          //need to pass the controller of the login screen. The controller will change every time when the page comes.
                          //controller will only work on the screen where we call
                          builder: (context) => ChangeNotifierProvider(
                                create: (context) => LoginScreenController(),
                                //give the screen name to travel when clicked
                                child: LoginScreen(),
                              )));
                },
                child: Text("Login now")),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          //just travel to the given page. The controller will not change until the app get restarted.
                          builder: (context) => RegistrationScreen()));
                },
                child: Text("Register now"))
          ],
        ),
      ),
    );
  }
}
