import 'package:flutter/material.dart';
Widget CustomTextField(
    {required double width,
    required String hint,
    required TextEditingController controller}) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 4),
    child: Container(
      height: 55,
      child: Stack(
        children: [
          Container(
            height: 20,
            width: width / 1.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.center,
                    colors: [
                      Color.fromARGB(255, 121, 120, 120),
                      Colors.white
                    ])),
          ),
          Positioned(
            top: 6,
            child: Container(
              width: width / 1.3,
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: hint,
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
