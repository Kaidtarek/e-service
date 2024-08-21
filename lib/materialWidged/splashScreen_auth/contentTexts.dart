import 'package:flutter/material.dart';

Column ContentTexts() {
  return const Column(
    children: [
      Text(
        "Simplifier l'entertien de votre maison",
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      Text(
        "Des professionnels pour le nettoyage, les réparations, les installations et bien plus encore. Avec une réservation simple, planifiez à votre convenance et laissez-nous s'occuper du reste.",
        style: TextStyle(
            fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white),
        softWrap: true,
        overflow: TextOverflow.visible,
        maxLines: 3,
      ),
    ],
  );
}
