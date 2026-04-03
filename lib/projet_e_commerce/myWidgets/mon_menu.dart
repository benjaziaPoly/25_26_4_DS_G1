import 'package:flutter/material.dart';

class MonMenu extends StatefulWidget {
  const MonMenu({super.key});

  @override
  State<MonMenu> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MonMenu> {
  var selectedMenu = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Ben Jazia"),
            accountEmail: Text("monemail@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://st2.depositphotos.com/1006318/5909/v/450/depositphotos_59094701-stock-illustration-businessman-profile-icon.jpg",
              ),
            ),
          ),
          ListTile(
            selected: selectedMenu,
            leading: Icon(Icons.home),
            title: Text("Acceuil"),
            onTap: () {
              Navigator.pushNamed(context, 'homePage');
            },
          ),
          ListTile(
            selected: selectedMenu,
            selectedColor: Colors.red,
            leading: Icon(Icons.list),
            title: Text("Liste Produit"),
            onTap: () {
              Navigator.pushNamed(context, 'listProduit');
              setState(() {
                selectedMenu = !selectedMenu;
              });
            },
          ),
          ListTile(
            selected: selectedMenu,
            leading: Icon(Icons.shopping_cart),
            title: Text("Mon Panier"),
            onTap: () {
              Navigator.pushNamed(context, 'panier');
              setState(() {
                selectedMenu = !selectedMenu;
              });
            },
          ),
          ListTile(
            selected: selectedMenu,
            leading: Icon(Icons.favorite),
            title: Text("mes Favoris"),
            onTap: () {
              Navigator.pushNamed(context, 'favorite');
              setState(() {
                selectedMenu = !selectedMenu;
              });
            },
          ),
          ListTile(
            selected: selectedMenu,
            leading: Icon(Icons.person),
            title: Text("Mon Profil"),
            onTap: () {
              Navigator.pushNamed(context, 'profile');
            },
          ),
          ListTile(
            selected: selectedMenu,
            leading: Icon(Icons.exit_to_app),
            title: Text("Quitter"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
