import 'package:ecomm/screens/cartscreen.dart';
import 'package:flutter/material.dart';
import '../widgets/homebody.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title:Text("MKUU LIMA",style: TextStyle(fontSize: 30,color: Theme.of(context).accentColor,
      ),
      ),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.shopping_bag),onPressed:()=> Navigator.of(context).pushNamed(CartScreen.routeName),)
      ],
      
      
      ),
      body: HomeBody(),
    );
  }
}
