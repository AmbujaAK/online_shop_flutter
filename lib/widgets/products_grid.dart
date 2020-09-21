import 'package:flutter/material.dart';
import 'package:online_shop_flutter/providers/products_provider.dart';
import '../widgets/product_item.dart';
import 'package:provider/provider.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ProductsProvider>(context);
    final products = productsData.items;

    return GridView.builder(
      padding: EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (context, index) => ProductItem(
        id: products[index].id,
        title: products[index].title,
        imageUrl: products[index].imageUrl,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    );
  }
}
