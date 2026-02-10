import 'package:flutter/material.dart';
/*
 LA notion des ETATs State Widget
*/
//StateLessWidget => stl
//StateFulWidget => stf

class Compteur extends StatefulWidget {
  const Compteur({super.key});

  @override
  State<Compteur> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Compteur> {
  int cpt = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercice 1"),
        backgroundColor: Colors.blue[100],
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  print("Click sur UP");
                  cpt += 1;
                  print("CPT=$cpt");
                });
              },
              child: Icon(Icons.thumb_up, color: Colors.blue, size: 60),
            ),
            Text(
              cpt.toString(),
              style: TextStyle(color: Colors.deepPurple, fontSize: 30),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  print("Click sur Down");
                  cpt -= 1;
                  print("CPT=$cpt");
                });
              },
              child: Icon(Icons.thumb_down, color: Colors.red, size: 60),
            ),
          ],
        ),
      ),
    );
  }
}
