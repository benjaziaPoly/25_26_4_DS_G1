import 'package:flutter/material.dart';
import 'package:projet1/projet_e_commerce/model/class_produit.dart';

class WidgetProduit extends StatefulWidget {
  Produit produit = Produit(
    id: "",
    title: "",
    description: "",
    price: 0,
    imageUrl: "",
    brand: "",
    produitCategoryName: "",
    quantity: 0,
  );
  WidgetProduit({super.key, required this.produit});
  @override
  _WidgetProduitState createState() => _WidgetProduitState();
}

//class Widget:Widget Imbriqué : PERE / fils
class _WidgetProduitState extends State<WidgetProduit> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                child: Image.network(
                  widget.produit.imageUrl,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.38,
                  fit: BoxFit.cover,
                ),
              ),

              Positioned(
                top: 15,
                right: 15,
                child: Badge(
                  label: Text('New', style: TextStyle(color: Colors.white)),
                  backgroundColor: Colors.purple,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.produit.description,
                  maxLines: 3,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '${widget.produit.price} tnd',
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "Quantité : ${widget.produit.quantity}",
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
