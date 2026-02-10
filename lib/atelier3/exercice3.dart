import 'package:flutter/material.dart';
/*
 LA notion des ETATs State Widget
*/
//StateLessWidget => stl
//StateFulWidget => stf

class GestionIcone extends StatefulWidget {
  const GestionIcone({super.key});

  @override
  State<GestionIcone> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<GestionIcone> {
  Color couleur = Colors.red;
  List<IconData> listeIcones = [
    Icons.ac_unit_sharp,
    Icons.access_time_rounded,
    Icons.account_balance_rounded,
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Exercice 3"),
        backgroundColor: Colors.blue[100],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Icon(listeIcones[index], color: couleur, size: 70),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (index < listeIcones.length - 1)
                  index++;
                else
                  index = 0;
                if (couleur == Colors.red)
                  couleur = Colors.green;
                else
                  couleur = Colors.red;
              });
            },
            child: Text("Changer couleur"),
          ),
        ],
      ),
    );
  }
}
