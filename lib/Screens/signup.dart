import 'package:e_service/Screens/signin.dart';
import 'package:e_service/materialWidged/splashScreen_auth/buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../materialWidged/splashScreen_auth/customTextField.dart';
import '../materialWidged/splashScreen_auth/logo.dart';

Widget signupScreen({required bool isAtTop, required BuildContext context}) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  TextEditingController name = TextEditingController();
  TextEditingController mail = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  return Scaffold(
    body: SingleChildScrollView(
      child: Container(
        height: height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.jpg"), fit: BoxFit.cover)),
        child: Stack(
          children: [
            Logo(isAtTop: isAtTop, context: context),
            Positioned(
              top: MediaQuery.of(context).size.height * 1.6 / 5,
              child: Container(
                height: height / 1.5,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    const Text(
                      "Inscription",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontWeight: FontWeight.bold),
                    ),
                    CustomTextField(
                        width: width, hint: "Nom complet", controller: name),
                    CustomTextField(
                        width: width, hint: "Email", controller: mail),
                    CustomTextField(
                        width: width,
                        hint: "Numéro de Téléphone",
                        controller: phone),
                    CustomTextField(
                        width: width,
                        hint: "Mot de passe",
                        controller: password),
                    SizedBox(height: 10),
                    SingleButton(
                        width: width * 2.3, onTap: () {}, text: "Signup"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Vous avez un compte ?",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SigninScreen()));
                          },
                          child: Text(
                            "Se connecter",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/easeC.png",
                      height: 40,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
