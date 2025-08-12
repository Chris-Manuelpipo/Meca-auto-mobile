import 'package:application/models/product/product_model.dart';
import 'package:application/widgets/category_widget.dart';
import 'package:application/widgets/product_card_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/image_slider_widget.dart';
import '../widgets/search_bar_widget.dart';

class HomePage extends StatefulWidget {
  final Function(int) onChangeTab;
  const HomePage({super.key, required this.onChangeTab});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentSlider = 0;
  String category = '';
  List<Map<String, dynamic>> piecesItems = [];
  List<Map<String, dynamic>> piecesCategory = [];
  // bool _isLoading = true;

  // @override
  // void initState() {
  //   super.initState();
  //   fetchData();
  // }

  // Future<void> fetchData() async {
  //   await fetchCategory();
  //   if (piecesCategory.isNotEmpty){
  //     category = piecesCategory[0]['name'];
  //     await filterProductByCategory();
  //   }

  //   setState(() {
  //     _isLoading = false;
  //   });
  // }

  // Future<void> fetchCategory() async {
  //   try{

  //   } catch(e) {
  //     print(e.toString());
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Row(
                    children: [
                      Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                          ),
                          children: [
                            TextSpan(text: "Bonjour, "),
                            TextSpan(
                              text: "Chris \n",
                              style: TextStyle(color: Colors.red),
                            ),
                            TextSpan(
                              text: "Bienvenue sur Meca Auto",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.grey[50],
                          padding: EdgeInsets.all(15),
                        ),
                        onPressed: () {
                          widget.onChangeTab(2);
                        },
                        icon: Icon(
                          Icons.shopping_cart_checkout_outlined,
                          size: 27,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Vos pièces automobiles aux meilleurs prix",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: SearchBarWidget(onSearch: (p0) {}),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: ImageSliderWidget(
                    currentSlide: currentSlider,
                    onChange: (value) {
                      setState(() {
                        currentSlider = value;
                      });
                    },
                  ),
                ),
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Padding(
                //       padding: EdgeInsets.symmetric(horizontal: 15),
                //       child: Row(
                //         children: [
                //           Text(
                //             "Categories",
                //             style: TextStyle(
                //               fontSize: 23,
                //               fontWeight: FontWeight.w600,
                //             ),
                //           ),
                //           Spacer(),
                //           Text(
                //             "Voir plus",
                //             style: TextStyle(fontSize: 16, color: Colors.black38),
                //           ),
                //           Icon(Icons.keyboard_arrow_right, color: Colors.black38),
                //         ],
                //       ),
                //     ),
                //     Padding(
                //       padding: EdgeInsets.only(left: 15, top: 5),
                //       child: SingleChildScrollView(
                //         scrollDirection: Axis.horizontal,
                //         child: Row(
                //           children: List.generate(
                //             piecesCategory.length,
                //             (index) => Padding(
                //               padding: EdgeInsets.only(right: 10),
                //               child: GestureDetector(
                //                 onTap: () {},
                //                 child: Container(
                //                   padding: EdgeInsetsDirectional.symmetric(
                //                     horizontal: 5,
                //                   ),
                //                   decoration: BoxDecoration(
                //                     borderRadius: BorderRadius.circular(10),
                //                     border: Border.all(
                //                       width: category == piecesCategory[index]['name']
                //                           ? 2
                //                           : 1,
                //                       color: category == piecesCategory[index]['name']
                //                           ? Colors.red
                //                           : Colors.black45,
                //                     ),
                //                   ),
                //                   child: Column(
                //                     children: [
                //                       Container(
                //                         height: 70,
                //                         width: 70,
                //                         decoration: BoxDecoration(
                //                           shape: BoxShape.circle,
                //                           color: Colors.red,
                //                           image: DecorationImage(
                //                             fit: BoxFit.cover,
                //                             image: NetworkImage(
                //                               piecesCategory[index]['image'],
                //                             ),
                //                           ),
                //                         ),
                //                       ),
                //                       SizedBox(height: 5),
                //                       Text(
                //                         piecesCategory[index]['name'],
                //                         style: TextStyle(
                //                           fontWeight:
                //                               category ==
                //                                   piecesCategory[index]['name']
                //                               ? FontWeight.bold
                //                               : FontWeight.w500,
                //                         ),
                //                       ),
                //                     ],
                //                   ),
                //                 ),
                //               ),
                //             ),
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Row(
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Voir plus",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_right, color: Colors.black54),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Categories(),
                Row(
                  children: [
                    Text(
                      "Meilleurs offres",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 23,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Voir plus",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_right, color: Colors.black54),
                  ],
                ),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: 0.8, // <-- carré parfait
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return ProductCardWidget(product: products[index]);
                  },
                ),
              ],
            ),
          ],
        ),
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