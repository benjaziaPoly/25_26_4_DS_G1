import 'package:flutter/material.dart';
import 'package:projet1/projet_e_commerce/pages/barre_navigation.dart';
import 'package:projet1/projet_e_commerce/pages/favori.dart';
import 'package:projet1/projet_e_commerce/pages/home_page.dart';
import 'package:projet1/projet_e_commerce/pages/page_user.dart';
import 'package:projet1/projet_e_commerce/pages/panier.dart';
import 'package:projet1/projet_e_commerce/pages/produit_detail.dart';
import 'package:projet1/projet_e_commerce/pages/produit_list.dart';
import 'package:projet1/projet_e_commerce/provider/cart_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PanierProvider()),
         
      ], child: EcommerceApp(),),);
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'homePage': (context) => HomePage(),
        'listProduit': (context) => ListProduitPage(),
        'detailProduit': (context) => ProduitDetailScreen(),
        'panier': (context) => PanierPage(),
        'favorite': (context) => FavoriPage(),
        'profil': (context) => UserInfoPage(),
      },
      home: BarreNavigationScreen(),
      //HomePage()
    );
    //BarreNavigationScreen
  }
}

// implémentaion d'eun exmple d'appel ASYNCHRONE
// Future<void> getImage() async{
//    aa
//    //opération lente
//    await Instruction(); 
//    aaaa
// }