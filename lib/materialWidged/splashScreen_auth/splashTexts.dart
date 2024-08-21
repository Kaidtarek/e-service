import 'package:e_service/materialWidged/splashScreen_auth/buttons.dart';
import 'package:e_service/materialWidged/splashScreen_auth/contentTexts.dart';
import 'package:flutter/material.dart';


class ContentSplashWidgets extends StatefulWidget {
  double opacity;
  
   ContentSplashWidgets({super.key, required this.opacity});

  @override
  State<ContentSplashWidgets> createState() => _ContentSplashWidgetsState();
}

class _ContentSplashWidgetsState extends State<ContentSplashWidgets> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height/2.5,
      child: AnimatedOpacity(
        opacity: widget.opacity,
        duration: const Duration(milliseconds: 100),
        child: Column(
          children: [
            ContentTexts(),
            Spacer(),
            Buttons(width: width,context: context),
            Spacer(),
            Spacer(),
            Image.asset(
              "assets/easeC.png",
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}