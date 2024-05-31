import 'package:flutter/material.dart';
import 'package:web_test/home/ui/home.dart';
import 'package:web_test/product/productList/product_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProductList();
  }
}
