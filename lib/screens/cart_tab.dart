import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';


class CartTab extends StatelessWidget {
const CartTab({super.key});


@override
Widget build(BuildContext context) {
final cart = context.watch<CartProvider>();


return SafeArea(
child: Padding(
padding: const EdgeInsets.all(12.0),
child: Column(children: [
Expanded(
child: cart.items.isEmpty
? const Center(child: Text('Seu carrinho está vazio'))
: ListView.builder(
itemCount: cart.items.length,
itemBuilder: (context, index) {
final it = cart.items[index];
return ListTile(
leading: Container(width: 56, height: 56, color: Colors.grey[200], child: const Icon(Icons.fastfood)),
title: Text(it.product.name),
subtitle: Text('Quantidade: ${it.quantity}'),
trailing: Text('R\$ ${(it.product.price * it.quantity).toStringAsFixed(2)}'),
);
},
),
),
const SizedBox(height: 8),
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [const Text('Subtotal', style: TextStyle(fontWeight: FontWeight.bold)), Text('R\$ ${cart.subtotal.toStringAsFixed(2)}')]),
const SizedBox(height: 8),
ElevatedButton(onPressed: cart.items.isEmpty ? null : () => Navigator.pushNamed(context, '/checkout'), child: const Padding(padding: EdgeInsets.symmetric(vertical: 14), child: Text('Finalizar pedido')))
]),
),
);
}
}