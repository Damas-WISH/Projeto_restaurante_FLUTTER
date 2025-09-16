import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';


class CheckoutScreen extends StatefulWidget {
const CheckoutScreen({super.key});


@override
State<CheckoutScreen> createState() => _CheckoutScreenState();
}


class _CheckoutScreenState extends State<CheckoutScreen> {
String payment = 'Cartão';


@override
Widget build(BuildContext context) {
final cart = context.watch<CartProvider>();
final subtotal = cart.subtotal;
final shipping = 5.0;


return Scaffold(
appBar: AppBar(title: const Text('Checkout')),
body: Padding(
padding: const EdgeInsets.all(12.0),
child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
const Text('Endereço de entrega', style: TextStyle(fontWeight: FontWeight.bold)),
const SizedBox(height: 8),
Card(child: ListTile(title: const Text('Rua Exemplo, 123'), subtitle: const Text('Bairro - Cidade'))),
const SizedBox(height: 12),
const Text('Forma de pagamento', style: TextStyle(fontWeight: FontWeight.bold)),
RadioListTile(value: 'Cartão', groupValue: payment, title: const Text('Cartão de crédito'), onChanged: (v) => setState(() => payment = v as String)),
RadioListTile(value: 'Pix', groupValue: payment, title: const Text('PIX'), onChanged: (v) => setState(() => payment = v as String)),
RadioListTile(value: 'Dinheiro', groupValue: payment, title: const Text('Dinheiro'), onChanged: (v) => setState(() => payment = v as String)),
const Spacer(),
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text('Total: R\$ ${(subtotal + shipping).toStringAsFixed(2)}', style: const TextStyle(fontWeight: FontWeight.bold)), ElevatedButton(onPressed: () { cart.clear(); showDialog(context: context, builder: (_) => AlertDialog(title: const Text('Pedido confirmado'), content: const Text('Seu pedido foi confirmado (simulado).'), actions: [TextButton(onPressed: () { Navigator.pop(context); Navigator.pushReplacementNamed(context, '/home'); }, child: const Text('OK'))])); }, child: const Text('Confirmar'))])
]),
),
);
}
}