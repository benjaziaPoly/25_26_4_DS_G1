import 'package:flutter/material.dart';

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
      body: Text("To DO....."),
    );
  }
}
