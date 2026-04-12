import 'package:flutter/material.dart';
import 'package:projet1/projet_e_commerce/model/class_produit_panier.dart';

class PanierProvider with ChangeNotifier {
  // declarer tantque un Attribut PRIVATE
  List<ProduitPanier> _panier = [];

  // GET UNIQUEMENT
  List<ProduitPanier> get Panier {
    return _panier;
  }

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
    notifyListeners();//
  }
}
