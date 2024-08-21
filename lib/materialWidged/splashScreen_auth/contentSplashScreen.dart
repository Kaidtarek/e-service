
import 'package:e_service/materialWidged/splashScreen_auth/splashTexts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget ContentSplashScreen(
    {required BuildContext context, required double opacity}) {
  return Positioned(
    top: MediaQuery.of(context).size.height * 2.8 / 5,
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(height: 6),
          ContentSplashWidgets(opacity: opacity),
          
        ],
      ),
    ),
  );
}
