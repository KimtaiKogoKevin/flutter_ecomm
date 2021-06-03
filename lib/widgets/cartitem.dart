import 'package:flutter/material.dart';

class CartPdt extends StatelessWidget {
  final String id;
  final String productId;
  final double price;
  final int quantity;
  final String name;

  CartPdt(this.id, this.productId, this.price, this.quantity, this.name);
  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: CircleAvatar(
        child: FittedBox(child: Text("KSH $price")),
      ),
      title: Text(name),
      subtitle: Text("Total: KSH ${price*quantity}"),
      trailing: Text("$quantity X"),
    ));
  }
}
