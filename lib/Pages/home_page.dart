import 'package:flutter/material.dart';

import 'pieces_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              "Toutes vos pièces automobiles aux meilleurs prix",
              style: TextStyle(fontSize: 23),
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.all(20)),
            ElevatedButton.icon(
              style: ButtonStyle(
                padding: WidgetStatePropertyAll(EdgeInsets.all(20)),
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(pageBuilder: (_, __, ___) => PiecesPage()),
                );
              },
              label: Text(
                "Afficher les pièces automobiles",
                style: TextStyle(fontSize: 20),
              ),
              icon: Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}
