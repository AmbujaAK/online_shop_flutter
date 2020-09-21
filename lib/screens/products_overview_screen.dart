import 'package:flutter/material.dart';
import 'package:online_shop_flutter/widgets/products_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Online Shop'),
      ),
      body: ProductsGrid(),
    );
  }
}
