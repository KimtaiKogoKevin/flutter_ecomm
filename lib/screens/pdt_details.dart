import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/products.dart';

class DetailPage extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productid = ModalRoute.of(context).settings.arguments as String;

    final loadedPdt = Provider.of<Products>(context).findById(productid);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedPdt.name),
      ),
      body: Column(children: <Widget>[
        Container(
          height: 300,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Image.network(loadedPdt.imgUrl),
          ),
        ),
        Text("Price: KSH ${loadedPdt.price}",
            style: TextStyle(
              fontSize: 20,
            )),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text("${loadedPdt.description}",
           style: TextStyle(
              fontSize:20,
            )
            ),
            ),
        
      ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
      child: Icon(Icons.shopping_cart,size: 45,),
      ),

    );
  }
}
