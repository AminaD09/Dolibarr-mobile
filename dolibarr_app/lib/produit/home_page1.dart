//import 'package:aydolibarr/produit/product.dart';
import 'package:dolibarr_app/produit/product.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';


class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});


   List<Product> get yourProductList => [
    Product(name: 'manzana', reference: 'prod1', price: 10.0, product: 'Boisson'),
    Product(name: 'Vin rouge' ,reference: 'prod2', price: 15.0, product: 'Boisson'),
    Product(name: 'Vin blanc' ,reference: 'prod3', price: 20.0, product: 'Boisson'),
    Product(name: 'Coca Cola' ,reference: 'prod4', price: 50.0, product: 'Boisson'),
  ];


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
             

             Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => ProductListPage(products: yourProductList),
  ),
);




            },
            child: const Text('Liste des produits'),
          ),
        ],
      ),
    );
  }
}




class ProductListPage extends StatelessWidget {
  final List<Product> products;

  const ProductListPage({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liste des produits'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
              //title: Text(product.reference),
            //subtitle: Text('${product.price} €'),
            title: Text(product.name),
            subtitle: Text('Réf. : ${product.reference} - Prix : ${product.price} €'),
            //subtitle: Text('Ref. : ${product.price} €'),

          );
        },
      ),
    );
  }
}
