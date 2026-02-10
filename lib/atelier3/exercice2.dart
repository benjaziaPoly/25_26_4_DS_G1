import 'package:flutter/material.dart';
/*
 LA notion des ETATs State Widget
*/
//StateLessWidget => stl
//StateFulWidget => stf

class GestionCouleur extends StatefulWidget {
  const GestionCouleur({super.key});

  @override
  State<GestionCouleur> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<GestionCouleur> {
  Color couleur = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: couleur,
      appBar: AppBar(
        title: Text("Exercice 1"),
        backgroundColor: Colors.blue[100],
        centerTitle: true,
      ),
      body: ElevatedButton(
        onPressed: () {
          setState(() {
            if (couleur == Colors.red)
              couleur = Colors.green;
            else
              couleur = Colors.red;
          });
        },
        child: Text("Changer couleur"),
      ),
    );
  }
}
