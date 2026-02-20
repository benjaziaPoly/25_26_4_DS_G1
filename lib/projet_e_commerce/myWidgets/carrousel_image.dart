import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:projet1/projet_e_commerce/const/images.dart';

class ImageCarrousel extends StatelessWidget {
  const ImageCarrousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width * 0.9,
        child: CarouselSlider(
          options: CarouselOptions(autoPlay: true, viewportFraction: 1.0),
          items: [
            Image.asset(listedesimagesCarrousel[0], fit: BoxFit.cover),
            Image.asset(listedesimagesCarrousel[1], fit: BoxFit.cover),
            Image.asset(listedesimagesCarrousel[2], fit: BoxFit.cover),
            Image.asset(listedesimagesCarrousel[3], fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}
