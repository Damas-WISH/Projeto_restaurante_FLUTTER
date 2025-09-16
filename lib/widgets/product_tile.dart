import 'package:flutter/material.dart';
import '../models/product.dart';


class ProductTile extends StatelessWidget {
final Product product;
final VoidCallback? onAdd;
const ProductTile({super.key, required this.product, this.onAdd});


@override
Widget build(BuildContext context) {
return ListTile(
contentPadding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
leading: Container(width: 56, height: 56, decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(8)), child: const Icon(Icons.fastfood)),
title: Text(product.name, style: const TextStyle(fontWeight: FontWeight.w600)),
subtitle: Text(product.description),
trailing: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Text('R\$ ${product.price.toStringAsFixed(2)}'), const SizedBox(height: 6), ElevatedButton(onPressed: onAdd, child: const Text('+'))]),
);
}
}