import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget Logo({required bool isAtTop, required BuildContext context}){
  return AnimatedPositioned(
            duration: Duration(seconds: 1),
            bottom: isAtTop ? null : 40.0,
            top: isAtTop ? 100.0 : null,
            left: MediaQuery.of(context).size.width / 5,
            child: Container(child: Image.asset('assets/ease.png'),height: 105,)
          );
}