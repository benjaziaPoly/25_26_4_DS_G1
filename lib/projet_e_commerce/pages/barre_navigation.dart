import 'package:flutter/material.dart';
import 'package:projet1/projet_e_commerce/pages/favori.dart';
import 'package:projet1/projet_e_commerce/pages/home_page.dart';
import 'package:projet1/projet_e_commerce/pages/page_user.dart';
import 'package:projet1/projet_e_commerce/pages/panier.dart';
import 'package:projet1/projet_e_commerce/pages/produit_list.dart';

class BarreNavigationScreen extends StatefulWidget {
  const BarreNavigationScreen({super.key});

  @override
  State<BarreNavigationScreen> createState() => _BarreNavigationScreenState();
}

class _BarreNavigationScreenState extends State<BarreNavigationScreen> {
  int selectedIndex = 0;
  List<Widget> mesPages = [
    HomePage(),
    ListProduitPage(),
    PanierPage(),
    FavoriPage(),
    UserInfoPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Acceuil"),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Liste des Produits",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Mon Panier",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favoris"),
          BottomNavigationBarItem(icon: Icon(Icons.face), label: "Profile"),
        ],
      ),

      body: mesPages[selectedIndex],
    );
  }
}
