import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projet1/projet_e_commerce/data/list_produits.dart';
import 'package:projet1/projet_e_commerce/model/class_produit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:projet1/projet_e_commerce/services/firebase_service.dart';

class MonMenu extends StatefulWidget {
  const MonMenu({super.key});

  @override
  State<MonMenu> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MonMenu> {
  var fbs = FireBaseServices();

  var selectedMenu = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Ben Jazia"),
            accountEmail: Text("monemail@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://st2.depositphotos.com/1006318/5909/v/450/depositphotos_59094701-stock-illustration-businessman-profile-icon.jpg",
              ),
            ),
          ),
          ListTile(
            selected: selectedMenu,
            leading: Icon(Icons.home),
            title: Text("Acceuil"),
            onTap: () {
              Navigator.pushNamed(context, 'homePage');
            },
          ),
          ListTile(
            selected: selectedMenu,
            selectedColor: Colors.red,
            leading: Icon(Icons.list),
            title: Text("Liste Produit"),
            onTap: () {
              Navigator.pushNamed(context, 'listProduit');
              setState(() {
                selectedMenu = !selectedMenu;
              });
            },
          ),
          ListTile(
            selected: selectedMenu,
            leading: Icon(Icons.shopping_cart),
            title: Text("Mon Panier"),
            onTap: () {
              Navigator.pushNamed(context, 'panier');
              setState(() {
                selectedMenu = !selectedMenu;
              });
            },
          ),
          ListTile(
            selected: selectedMenu,
            leading: Icon(Icons.favorite),
            title: Text("mes Favoris"),
            onTap: () {
              Navigator.pushNamed(context, 'favorite');
              setState(() {
                selectedMenu = !selectedMenu;
              });
            },
          ),
          ListTile(
            selected: selectedMenu,
            leading: Icon(Icons.person),
            title: Text("Mon Profil"),
            onTap: () {
              Navigator.pushNamed(context, 'profile');
            },
          ),
          ListTile(
            selected: selectedMenu,
            enabled: true,
            leading: Icon(Icons.person),
            title: Text("Charger DAta"),
            onTap: () {
              print("Save data to Firebase ....");
              fbs.sauvegarderProduits(AllProductData.Produits);
            },
          ),
          ListTile(
            enabled: true,
            leading: Icon(Icons.sunny),
            title: Text("Consulter Méteo"),
            onTap: () {
              Navigator.pushNamed(context, "meteo");
            },
          ),
          ListTile(
            selected: selectedMenu,
            leading: Icon(Icons.exit_to_app),
            title: Text("Quitter"),
            onTap: () {
              //SystemNavigator.pop();
              exit(0);
            },
          ),
        ],
      ),
    );
  }
}
