import 'package:flutter/material.dart';
import 'package:projet1/projet_e_commerce/data/list_produits.dart';
import 'package:projet1/projet_e_commerce/model/class_produit.dart';
import 'package:projet1/projet_e_commerce/myWidgets/un_produit.dart';
import 'package:projet1/projet_e_commerce/services/firebase_service.dart';

class ListProduitPage extends StatefulWidget {
  const ListProduitPage({super.key});

  @override
  State<ListProduitPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ListProduitPage> {
  bool isLoading = false;
  var fbs = FireBaseServices();
  List<Produit> listProduitsFB = [];

  Future<void> loadProduct() async {
    setState(() {
      isLoading = true;
    });

    dynamic res = await fbs.getAllProducts();
    print(listProduitsFB.length);

    setState(() {
      listProduitsFB = res;
    });
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    loadProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //recupération des produits depuis Firebase

    return Scaffold(
      appBar: AppBar(
        title: Text("Liste des produits"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: isLoading
          ? CircularProgressIndicator()
          : GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.4,
              children: List.generate(listProduitsFB.length, (index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      'detailProduit',
                      arguments: index,
                    );
                    // 2Méthodes pour transmettre le prodiit vers
                    // la page Detail_produits
                    // => COmpte rendu
                    /*
                 A. Constructeur ProduitDetailScreen(): index ou ObjetProduit
                 B. Navigator Argument
               */
                  },
                  child: WidgetProduit(produit: listProduitsFB[index]),
                );
              }),
            ),
    );
  }
}
