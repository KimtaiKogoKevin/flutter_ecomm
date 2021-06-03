import 'package:ecomm/models/cart.dart';
import 'package:ecomm/screens/pdt_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/screens/homepage.dart';
import 'models/products.dart';
import './screens/cartscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value:Products(),
        ),
         ChangeNotifierProvider.value(
          value:Cart(),
        ),
      ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
        title: 'flutter E-commerce App',
        theme: ThemeData(
            primaryColor: Colors.greenAccent, accentColor: Colors.white),
        home: HomePage(),
        routes: {
          DetailPage.routeName:(ctx)=>DetailPage(),
          CartScreen.routeName:(ctx)=>CartScreen()
          
        },
      ),
    );
  }
}
