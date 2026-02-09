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
          Center(
            child: Text(
              "Bonjour à Tous",
              style: TextStyle(color: Colors.red, fontSize: 30.0),
            ),
          ),
          Center(
            child: Text(
              "DSI 4 G1",
              style: TextStyle(color: Colors.red, fontSize: 30.0),
            ),
          ),
        ],
      ),
    ),
  );
  runApp(myApp);
}
