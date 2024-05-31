import 'package:flutter/material.dart';
import 'package:web_test/data/product_data.dart';
import 'package:web_test/data/product_model.dart';

// class ProductList extends StatefulWidget {
//   final List<ProductModel> products = [
//     ProductModel(
//       name: 'Product 1',
//       price: 29.99,
//       imageUrl: 'https://via.placeholder.com/150',
//     ),
//     ProductModel(
//       name: 'Product 2',
//       price: 59.99,
//       imageUrl: 'https://via.placeholder.com/150',
//     ),
//     ProductModel(
//       name: 'Product 3',
//       price: 19.99,
//       imageUrl: 'https://via.placeholder.com/150',
//     ),
//     ProductModel(
//       name: 'Product 4',
//       price: 99.99,
//       imageUrl: 'https://via.placeholder.com/150',
//     ),
//   ];

//   ProductList({super.key});

//   @override
//   State<ProductList> createState() => _ProductListState();
// }

// class _ProductListState extends State<ProductList> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Product list'),
//       ),
//       body: ListView.builder(
//         itemCount: products.length,
//         itemBuilder: (context, index) {
//           final product = products[index];
//           return ListTile(
//             leading: Image.network(
//               product.imageUrl,
//               width: 50,
//               height: 50,
//             ),
//             title: Text(product.imageUrl),
//             subtitle: Text('\$${product.price.toString()}'),
//           );
//         },
//       ),
//     );
//   }
// }

// // ListView.builder(
// //         itemCount: products.length,
// //         itemBuilder: (context, index) {
// //           final product = products[index];
// //           return ListTile(
// //             leading: Image.network(
// //               product.imageUrl,
// //               width: 50,
// //               height: 50,
// //             ),
// //             title: Text(product.imageUrl),
// //             subtitle: Text('\$${product.price.toString()}'),
// //           );
// //         },
// //       ),

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Product listing'),
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return ListTile(
              leading: Image.network(
                product.imageUrl,
                width: 50,
                height: 50,
              ),
              title: Text(product.imageUrl),
              subtitle: Text('\$${product.price.toString()}'),
            );
          },
        ),
      ),
    );
  }
}
