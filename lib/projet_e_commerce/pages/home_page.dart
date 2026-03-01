import 'package:flutter/material.dart';
import 'package:projet1/projet_e_commerce/const/images.dart';
import 'package:projet1/projet_e_commerce/myWidgets/carrousel_image.dart';
import 'package:projet1/projet_e_commerce/myWidgets/image_categories.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page d'accueil"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ImageCarrousel(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              child: Text(
                "Catégories",
                style: TextStyle(
                  backgroundColor: Colors.black,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(listedesimagesCategories.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 6, right: 6),
                  child: ImageCategorie(
                    titre: listedesTitresimagesCategories[index],
                    img: listedesimagesCategories[index],
                  ),
                );
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              child: Text(
                "Marques",
                style: TextStyle(
                  backgroundColor: Colors.black,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(listedesimagesCategories.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 6, right: 6),
                  child: ImageCategorie(
                    titre: listedesTitresimagesCategories[index],
                    img: listedesimagesCategories[index],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
