// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:provider_statemanagement/controller/registration_screen_controller.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //to access the provider create an object
    final registrationProvider =
        Provider.of<RegistrationScreenController>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            InkWell(
                onTap: () {
                  //calling a function from provider to say what happen happen when we click on the button

                  Provider.of<RegistrationScreenController>(context,
                          listen: false)
                      .onRegistration();
                },
                child: Text("register here")),
            //show what happen when we click on the button
            Text(registrationProvider.isRegistration.toString())
          ],
        ),
      ),
    );
  }
}
