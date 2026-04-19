import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:projet1/projet_e_commerce/model/class_produit_panier.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PanierProvider with ChangeNotifier {
  // declarer tantque un Attribut PRIVATE
  List<ProduitPanier> _panier = [];

  PanierProvider() {
    readCart();
  }
  // GET UNIQUEMENT
  List<ProduitPanier> get Panier {
    return _panier;
  }

  // Ateleir 08: Shared Preferences
  Future<void> saveCart() async {
    SharedPreferences data = await SharedPreferences.getInstance();
    //sauvegarder _panier
    //  data.setString("savedcart", "XX");///
    //  data.setStringList("savedcart", List<String>));
    // FORAMT JSON
    String jsonCart = json.encode(
      _panier.map((unProduit) => unProduit.toMap()).toList(),
    );
    print("Sauvegarde du panier:${_panier.length} Articles");
    await data.setString("savedcart", jsonCart);
  }

  Future<void> readCart() async {
    SharedPreferences data = await SharedPreferences.getInstance();
    String? jsonCart = data.getString("savedcart");
    if (jsonCart == null) {
      _panier = [];
    } else {
      List<dynamic> decodedList = json.decode(
        jsonCart,
      ); //List Objet au format json
      _panier = decodedList.map((item) => ProduitPanier.fromMap(item)).toList();
    }
    print(
      "Recupération des articles depuis le panier:${_panier.length} Articles",
    );
    notifyListeners();
  }

  //
  void ajouterProduit(ProduitPanier NouveauProduit) {
    ProduitPanier? produitTrouve = _panier.firstWhere(
      (art) {
        if (art.id == NouveauProduit.id) {
          art.quantite += 1;
          return true;
        }
        return false;
      },
      orElse: () {
        print("Ajout new produit :" + NouveauProduit.title);
        final p = ProduitPanier(
          id: NouveauProduit.id,
          title: NouveauProduit.title,
          description: NouveauProduit.description,
          price: NouveauProduit.price,
          imageUrl: NouveauProduit.imageUrl,
          quantite: 1,
        );
        _panier.add(p);
        return p;
      },
    );
    notifyListeners(); //
  }
}
