import 'package:flutter/foundation.dart';
import '../models/product.dart';


class CartItem {
final Product product;
int quantity;
CartItem({required this.product, this.quantity = 1});
}


class CartProvider extends ChangeNotifier {
final List<CartItem> _items = [];


List<CartItem> get items => List.unmodifiable(_items);


void addProduct(Product product) {
final index = _items.indexWhere((i) => i.product.id == product.id);
if (index >= 0) {
_items[index].quantity += 1;
} else {
_items.add(CartItem(product: product));
}
notifyListeners();
}


void removeProduct(Product product) {
_items.removeWhere((i) => i.product.id == product.id);
notifyListeners();
}


void changeQuantity(Product product, int qty) {
final index = _items.indexWhere((i) => i.product.id == product.id);
if (index >= 0) {
_items[index].quantity = qty;
if (_items[index].quantity <= 0) _items.removeAt(index);
notifyListeners();
}
}


double get subtotal => _items.fold(0.0, (s, i) => s + i.product.price * i.quantity);


void clear() {
_items.clear();
notifyListeners();
}
}