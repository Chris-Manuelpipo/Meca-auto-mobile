import 'package:flutter/material.dart';

import '../widgets/search_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String category = '';
  List<Map<String, dynamic>> piecesItems = [];
  List<Map<String, dynamic>> piecesCategory = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text.rich(
                  TextSpan(
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    children: [
                      TextSpan(text: "Bonjour, "),
                      TextSpan(
                        text: "Chris \n",
                        style: TextStyle(color: Colors.red),
                      ),
                      TextSpan(
                        text: "Bienvenue sur Meca Auto",
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart_checkout_outlined, size: 27),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              "Vos pièces automobiles aux meilleurs prix",
              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SearchBarWidget(onSearch: (p0) {}),
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Voir plus",
                      style: TextStyle(fontSize: 16, color: Colors.black38),
                    ),
                    Icon(Icons.keyboard_arrow_right, color: Colors.black38),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, top: 5),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      piecesCategory.length,
                      (index) => Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsetsDirectional.symmetric(
                              horizontal: 5,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: category == piecesCategory[index]['name']
                                    ? 2
                                    : 1,
                                color: category == piecesCategory[index]['name']
                                    ? Colors.red
                                    : Colors.black45,
                              ),
                            ),
                            child: Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


// Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset(
//             "assets/images/reglages.png",
//             width: 100, // largeur en pixels
//             height: 100, // hauteur en pixels
//             fit: BoxFit.contain, // comment l’image s’adapte
//           ),
//           Text(
//             "Bienvenue sur l'application de vente des pièces automobiles",
//             style: TextStyle(fontSize: 32),
//             textAlign: TextAlign.center,
//           ),
//           Text(
//             "Toutes vos pièces automobiles aux meilleurs prix",
//             style: TextStyle(fontSize:1),
//             textAlign: TextAlign.center,
//           ),
//           Padding(padding: EdgeInsets.all(20)),
//         ],
//       ),
//     );