import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';


class CartScreen extends StatelessWidget {
const CartScreen({super.key});


@override
Widget build(BuildContext context) {
final cart = context.watch<CartProvider>();


return Scaffold(
appBar: AppBar(title: const Text('Carrinho')),
body: Padding(
padding: const EdgeInsets.all(12.0),
child: Column(children: [
Expanded(
child: cart.items.isEmpty ? const Center(child: Text('Carrinho vazio')) : ListView.builder(itemCount: cart.items.length, itemBuilder: (context, index) {
final it = cart.items[index];
return ListTile(
leading: Container(width: 50, height: 50, color: Colors.grey[200], child: const Icon(Icons.fastfood)),
title: Text(it.product.name),
subtitle: Text('Quantidade: ${it.quantity}'),
trailing: Text('R\$ ${(it.product.price * it.quantity).toStringAsFixed(2)}'),
);
}),
),
const Divider(),
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [const Text('Subtotal'), Text('R\$ ${cart.subtotal.toStringAsFixed(2)}')]),
const SizedBox(height: 8),
ElevatedButton(onPressed: cart.items.isEmpty ? null : () => Navigator.pushNamed(context, '/checkout'), child: const Padding(padding: EdgeInsets.symmetric(vertical: 14), child: Text('Checkout')))
]),
),
);
}
}