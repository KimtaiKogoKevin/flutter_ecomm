import 'package:flutter/foundation.dart';

class CartItem {
  final String id;
  final String name;
  final int quantity;
  final double price;

  CartItem(
      {@required this.id,
      @required this.name,
      @required this.quantity,
      @required this.price});
}

class Cart with ChangeNotifier {
  Map<String, CartItem> __items = {};

  Map<String, CartItem> get items {
    return {...__items};
  }

  int get itemCount {
    return __items.length;
  }

  void addItem(String pdtid, String name, double price) {
    if (__items.containsKey(pdtid)) {
      __items.update(
          pdtid,
          (existingCartItem) => CartItem(
              id: DateTime.now().toString(),
              name: existingCartItem.name,
              quantity: existingCartItem.quantity + 1,
              price: existingCartItem.price));
    } else {
      __items.putIfAbsent(
          pdtid,
          () => CartItem(
              id: DateTime.now().toString(),
              name: name,
              quantity: 1,
              price: price));
    }
    notifyListeners();
  }

  void removeitem(String id) {
    __items.remove(id);
    notifyListeners();
  }

  void removeSingleitem(String id) {
    if (!__items.containsKey(id)) {
      return;
    } else if (__items[id].quantity > 1) {
      __items.update(
          id,
          (existingCartItem) => CartItem(
              id: DateTime.now().toString(),
              name: existingCartItem.name,
              quantity: existingCartItem.quantity - 1,
              price: existingCartItem.price));
    }
    notifyListeners();
  }

  void clear() {
    __items = {};
    notifyListeners();
  }
}
