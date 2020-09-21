import 'package:flutter/material.dart';
import 'package:online_shop_flutter/providers/products_provider.dart';
import 'package:online_shop_flutter/widgets/products_grid.dart';
import 'package:provider/provider.dart';

enum FilterOptions { Favorites, All }

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsContainer =
        Provider.of<ProductsProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Online Shop'),
        actions: [
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              if (selectedValue == FilterOptions.Favorites) {
                productsContainer.showFavoritesOnly();
              } else {
                productsContainer.showAll();
              }
            },
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('Only favorite'),
                value: FilterOptions.Favorites,
              ),
              PopupMenuItem(
                child: Text('show All'),
                value: FilterOptions.All,
              ),
            ],
          )
        ],
      ),
      body: ProductsGrid(),
    );
  }
}
