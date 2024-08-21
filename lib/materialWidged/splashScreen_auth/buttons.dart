import 'package:e_service/Screens/signin.dart';
import 'package:e_service/Screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget Buttons({required double width, required BuildContext context}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      SingleButton(
          width: width,
          onTap: () {
            print("first button");
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> signupScreen(isAtTop: true, context: context)));
          },
          text: "signup"),
      SingleButton(
          width: width,
          onTap: () {
            print("second button");
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SigninScreen()));
          },
          text: "signin"),
    ],
  );
}

Widget SingleButton(
    {required double width,
    required VoidCallback onTap,
    required String text}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      width: width / 3,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
      )),
    ),
  );
}
