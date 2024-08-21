import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../materialWidged/splashScreen_auth/contentSplashScreen.dart';
import '../materialWidged/splashScreen_auth/logo.dart';

Widget Splash({required BuildContext context, required bool isAtTop, required double opacity}){
  return Stack(
        children: [
          Logo(isAtTop: isAtTop, context: context),
          ContentSplashScreen(context: context, opacity: opacity)
        ],
      );
}