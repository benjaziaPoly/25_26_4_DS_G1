import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:projet1/projet_e_commerce/model/class_produit.dart';

class FireBaseServices {
  Future<void> sauvegarderProduits(List<Produit> liste) async {
    //connexion a firebase
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    WriteBatch batch = firestore.batch();

    for (var produit in liste) {
      DocumentReference docRef = firestore.collection('produits').doc();
      batch.set(docRef, produit.toMap());
    }

    try {
      await batch.commit();
      print("List produits saved !!");
    } catch (e) {
      print("Erreur de sauvegarde...:$e");
    }
  }

  Future<List<Produit>> getAllProducts() async {
    List<Produit> listp = [];
    print("Chargement des produits depuis Firebase en cours...");
    final CollectionReference collectionProduits = FirebaseFirestore.instance
        .collection('produits');
    try {
      QuerySnapshot snapshot = await collectionProduits.get();
      for (var map in snapshot.docs) {
        listp.add(
          Produit.fromMap({
            "id": map['id'],
            "title": map['title'],
            "description": map['description'],
            "price": map['price']?.toDouble(),
            "imageUrl": map['imageUrl'],
            "brand": map['brand'],
            "produitCategoryName": map['produitCategoryName'],
            "quantity": map['quantity'],
          }),
        );
        print("Article: [ id = " + map['id'] + " title= " + map['title']);
      }
    } catch (e) {
      print("Erreur : $e");
    }
    return listp;
  }
}
