import 'dart:io';

import 'package:flutter/material.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:projet1/firebase_options.dart';
import 'package:projet1/projet_e_commerce/pages/barre_navigation.dart';
import 'package:projet1/projet_e_commerce/pages/favori.dart';
import 'package:projet1/projet_e_commerce/pages/home_page.dart';
import 'package:projet1/projet_e_commerce/pages/meteo_screen.dart';
import 'package:projet1/projet_e_commerce/pages/page_user.dart';
import 'package:projet1/projet_e_commerce/pages/panier.dart';
import 'package:projet1/projet_e_commerce/pages/produit_detail.dart';
import 'package:projet1/projet_e_commerce/pages/produit_list.dart';
import 'package:projet1/projet_e_commerce/provider/cart_provider.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  final bool isConnected = await InternetConnection().hasInternetAccess;
  if (isConnected) {
    print('************Connected!');
  } else {
    print('************No internet connection.');
    exit(0);
  }
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    print("Connecté à FireBAse Database avec succès");
  } catch (e) {
    print("Erreur de connexion Firebase  $e");
  }

  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => PanierProvider())],
      child: EcommerceApp(),
    ),
  );
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
        'meteo': (context) => MeteoScreen(),
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