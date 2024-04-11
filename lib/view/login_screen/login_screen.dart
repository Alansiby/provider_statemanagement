// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/controller/login_screen_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //to access the provider create an object
    final loginProvider = Provider.of<LoginScreenController>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            InkWell(
                onTap: () {
                  //calling a function from provider to say what happen happen when we click on the button
                  Provider.of<LoginScreenController>(context, listen: false)
                      .onlogin();
                },
                child: Text("Login Now")),
            //show what happen when we click on the button
            Text(loginProvider.isLogged.toString()),
          ],
        ),
      ),
    );
  }
}
