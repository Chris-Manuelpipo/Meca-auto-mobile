import 'package:flutter/material.dart';

class PiecesPage extends StatefulWidget {
  const PiecesPage({super.key});

  @override
  State<PiecesPage> createState() => _PiecesPageState();
}

class _PiecesPageState extends State<PiecesPage> {
  final pieces = [
    {
      "name": "Moteur",
      "brand": "Toyota",
      "specification": "7",
      "image": "image1",
    },
    {
      "name": "Moteur",
      "brand": "Audi",
      "specification": "7",
      "image": "image2",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Liste des pièces automobiles")),
      body: Center(
        child: ListView.builder(
          itemCount: pieces.length,
          itemBuilder: (context, index) {
            final piece = pieces[index];
            final image = piece['image'];
            return Card(
              child: ListTile(
                leading: Image.asset(
                  "assets/images/reglages.png", // comment l’image s’adapte
                ),
                title: Text('Two-line ListTile'),
                subtitle: Text('Here is a second line'),
                trailing: Icon(Icons.more_vert),
              ),
            );
          },
        ),
      ),
    );
  }
}
