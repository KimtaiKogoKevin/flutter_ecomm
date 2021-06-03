import 'package:ecomm/screens/pdt_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/products.dart';

class PdtItem extends StatelessWidget {
  final String name;
  final String imageUrl;

  PdtItem({this.name, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final pdt = Provider.of<Product>(context);
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(DetailPage.routeName, arguments: pdt.id);
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridTile(
          child: Image.network(imageUrl),
          footer: GridTileBar(
            title: Text(name),
            trailing:
                IconButton(icon: Icon(Icons.shopping_cart), onPressed: null),
            backgroundColor: Colors.black87,
          ),
        ),
      ),
    );
  }
}
