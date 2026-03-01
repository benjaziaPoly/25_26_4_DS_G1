import 'package:flutter/material.dart';

class ImageCategorie extends StatelessWidget {
  String titre;
  String img;
  ImageCategorie({super.key, required this.titre, required this.img});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(titre),
        SizedBox(
          width: 200,
          height: 150,
          child: Image.asset(img, fit: BoxFit.cover),
        ),
      ],
    );
  }
}
