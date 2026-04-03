import 'package:flutter/material.dart';
import 'package:projet1/projet_e_commerce/data/list_produits.dart';

//class ProductDetail extends StatefulWidget {
class ProduitDetailScreen extends StatefulWidget {
  const ProduitDetailScreen({super.key});
  @override
  State<ProduitDetailScreen> createState() => _ProduitDetailScreenState();
}

class _ProduitDetailScreenState extends State<ProduitDetailScreen> {
  //var productInfo = Product();

  @override
  Widget build(BuildContext context) {
    final dynamic args = ModalRoute.of(context)!.settings.arguments;
    int indexProduit;
    if (args == null || args.toString().isEmpty) {
      indexProduit = 0;
    } else {
      indexProduit = int.parse(args.toString());
    }
    final productInfo = AllProductData.Produits[indexProduit];

    return Scaffold(
      appBar: AppBar(title: Text(productInfo.title)),
      body: Stack(
        children: [
          Container(
            foregroundDecoration: const BoxDecoration(color: Colors.black12),
            height: MediaQuery.of(context).size.height * 0.45,
            width: double.infinity,
            child: Image.network(productInfo.imageUrl),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.only(top: 16, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 250.0),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Colors.purple.shade200,
                          borderRadius: BorderRadius.circular(30.0),
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.save,
                              size: 23,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Colors.purple.shade200,
                          borderRadius: BorderRadius.circular(30.0),
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.share,
                              size: 23,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey[300],
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          productInfo.description,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        productInfo.price.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          productInfo.description,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Divider(),
                      infoProduct("Brand", productInfo.brand),
                      infoProduct("Quantity", productInfo.quantity.toString()),
                      infoProduct("Category", productInfo.produitCategoryName),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: const Column(
                    children: [
                      Text(
                        "Aucun Review",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 21,
                        ),
                      ),
                      Text(
                        "Be the first to revview ...",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                //bouton en bas
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                          foregroundColor: Colors.white,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        child: const Text("Add to Cart"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: ElevatedButton.icon(
                        onPressed: () {
                          print("ee");
                        },
                        label: const Text("Buy Now"),
                        icon: const Icon(Icons.credit_card),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          print("ee");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        child: Icon(Icons.favorite),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget infoProduct(String name, String value) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        children: [
          Text(
            "$name:",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(width: 10),
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
