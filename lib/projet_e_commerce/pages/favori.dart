import 'package:flutter/material.dart';

class FavoriPage extends StatefulWidget {
  const FavoriPage({super.key});

  @override
  State<FavoriPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<FavoriPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("panier"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Text("To DO....."),
    );
  }
}
