import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Meca Auto")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/reglages.png",
                width: 100, // largeur en pixels
                height: 100, // hauteur en pixels
                fit: BoxFit.contain, // comment l’image s’adapte
              ),
              Text(
                "Bienvenue sur l'application de vente des pièces automobiles",
                style: TextStyle(fontSize: 32),
                textAlign: TextAlign.center,
              ),
              Text(
                "Tous types de pièces automobiles aux meilleurs prix",
                style: TextStyle(fontSize: 23),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
