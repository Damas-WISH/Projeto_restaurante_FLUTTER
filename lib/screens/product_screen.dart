import 'package:flutter/material.dart';


class ProductScreen extends StatelessWidget {
const ProductScreen({super.key});


@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: const Text('Pizza Calabresa')),
body: Padding(
padding: const EdgeInsets.all(16.0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Container(
height: 200,
color: Colors.grey[300],
child: const Center(child: Text('Imagem do Produto')),
),
const SizedBox(height: 20),
const Text('Pizza Calabresa',
style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
const Text('R\$ 35.00'),
const SizedBox(height: 20),
ElevatedButton(
onPressed: () {},
child: const Text('Adicionar ao Carrinho'),
),
],
),
),
);
}
}