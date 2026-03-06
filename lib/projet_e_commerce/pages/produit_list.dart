import 'package:flutter/material.dart';
import 'package:projet1/projet_e_commerce/data/list_produits.dart';
import 'package:projet1/projet_e_commerce/myWidgets/un_produit.dart';

class ListProduitPage extends StatefulWidget {
  const ListProduitPage({super.key});

  @override
  State<ListProduitPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ListProduitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liste des produits"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.4,
        children: List.generate(AllProductData.Produits.length, (index) {
          return InkWell(
            onTap: () {
              // 2Méthodes pour transmettre le prodiit vers 
              // la page Detail_produits
              // => COmpte rendu
            },
            child: WidgetProduit(produit: AllProductData.Produits[index]),
          );
        }),
      ),
    );
  }
}
