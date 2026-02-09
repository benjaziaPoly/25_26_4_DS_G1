import 'package:flutter/material.dart';

void main() {
  var myApp = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Exercice 1"),
        backgroundColor: Colors.blue[100],
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          myButton(
            traitement: () {
              print("Click sur Save");
            },
            texte: "Enregistrer",
            h: 70,
            l: 180,
          ),
          myButton(
            traitement: () {
              print("click sur cancel");
            },
            texte: "Annuler",
            h: 70,
            l: 180,
            couleur: Colors.red,
          ),
        ],
      ),
    ),
  );
  runApp(myApp);
}

Widget myButton({
  required void Function()? traitement,
  required String texte,
  required double h,
  required double l,
  Color couleur = Colors.green,
}) {
  return Padding(
    padding: const EdgeInsets.only(right: 16),
    child: Center(
      child: SizedBox(
        height: h,
        width: l,
        child: ElevatedButton(
          onPressed: traitement,
          child: Text(texte),
          style: ElevatedButton.styleFrom(
            backgroundColor: couleur,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    ),
  );
}
