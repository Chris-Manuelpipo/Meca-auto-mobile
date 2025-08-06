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
      "specification": "8",
      "image": "image2",
    },
    {
      "name": "Moteur",
      "brand": "Audi",
      "specification": "10",
      "image": "image3",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: pieces.length,
        itemBuilder: (context, index) {
          final piece = pieces[index];
          final image = piece['image'];
          final name = piece['name'];
          final brand = piece['brand'];
          final specification = piece['specification'];
          return Card(
            child: ListTile(
              leading: Image.asset("assets/images/$image.jpeg"),
              contentPadding: EdgeInsets.all(20),
              title: Text('$name $brand'),
              subtitle: Text('Nombre de cylindres : $specification'),
              trailing: Icon(Icons.more_vert),
            ),
          );
        },
      ),
    );
  }
}
