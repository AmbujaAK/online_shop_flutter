import 'package:flutter/material.dart';
import 'package:online_shop_flutter/providers/cart.dart';
import 'package:online_shop_flutter/providers/orders.dart';
import 'package:online_shop_flutter/screens/cart_screen.dart';
import 'package:online_shop_flutter/screens/orders_screen.dart';
import 'package:online_shop_flutter/screens/product_detail_screen.dart';
import 'package:online_shop_flutter/screens/products_overview_screen.dart';
import 'package:provider/provider.dart';
import 'package:online_shop_flutter/providers/products_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductsProvider()),
        ChangeNotifierProvider(create: (context) => Cart()),
        ChangeNotifierProvider(create: (context) => Orders()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Online Shop',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (context) => ProductDetailScreen(),
          CartScreen.routeName: (context) => CartScreen(),
          OrdersScreen.routeName: (contex) => OrdersScreen(),
        },
      ),
    );
  }
}
