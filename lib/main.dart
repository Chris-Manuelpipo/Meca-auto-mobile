import 'package:application/Pages/pieces_page.dart';
import 'package:flutter/material.dart';
import 'Pages/cart_page.dart';
import 'Pages/home_page.dart';
import 'Pages/my_account_page.dart';
// import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   title: [
        //     Text("Accueil"),
        //     Text("Liste des pièces disponibles"),
        //     Text("Mes achats"),
        //     Text("Mon compte"),
        //   ][_currentIndex],
        // ),
        body: [
          HomePage(onChangeTab: setCurrentIndex),
          PiecesPage(),
          CartPage(),
          MyAccountPage(),
        ][_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index) => setCurrentIndex(index),
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          backgroundColor: Colors.white,
          iconSize: 30,
          elevation: 10,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Accueil"),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_rounded),
              label: 'Catégories',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Panier',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Mon compte',
            ),
          ],
        ),
      ),
    );
  }
}
