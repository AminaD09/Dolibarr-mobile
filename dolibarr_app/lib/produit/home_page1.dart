//import 'package:aydolibarr/produit/product.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';


class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('our product'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            //onPressed: () {
              // Naviguer vers la page de création de produit
onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const HomePage()),
  );
},





            //},
            child: const Text('New product'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Naviguer vers la page de liste des produits
            },
            child: const Text('Liste des produits'),
          ),
        ],
      ),
    );
  }
}




//ElevatedButton(
  //onPressed: () {
    //Navigator.push(
      //context,
      //MaterialPageRoute(builder: (context) => ProductCreationPage()),
    //);
  //},
  //child: const Text('Nouveau produit'),
//),
