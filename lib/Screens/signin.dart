import 'package:e_service/Screens/signup.dart';
import 'package:flutter/material.dart';

import '../materialWidged/splashScreen_auth/buttons.dart';
import '../materialWidged/splashScreen_auth/customTextField.dart';
import '../materialWidged/splashScreen_auth/logo.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    TextEditingController mail = TextEditingController();
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
            Logo(isAtTop: true, context: context),
            Positioned(
              top: MediaQuery.of(context).size.height * 2 / 5,
              child: Container(
                height: height/1.5,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    const Text(
                      "Connexion",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20,),
                    
                    CustomTextField(
                        width: width, hint: "Email", controller: mail),
                  
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
                        Text("Vous n'avez pas un compte ?",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> signupScreen(isAtTop: true, context: context)));
                          },
                          child: Text(
                            "inscription",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Spacer(),
                    Image.asset(
                      "assets/easeC.png",
                      height: 40,
                    ),
                    Spacer()
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
}
