import 'package:flutter/material.dart';


class ReviewScreen extends StatefulWidget {
const ReviewScreen({super.key});


@override
State<ReviewScreen> createState() => _ReviewScreenState();
}


class _ReviewScreenState extends State<ReviewScreen> {
double rating = 4;
final commentCtrl = TextEditingController();


@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: const Text('Avaliar pedido')),
body: Padding(
padding: const EdgeInsets.all(12.0),
child: Column(children: [
const Text('Como foi sua experiência?', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
const SizedBox(height: 12),
Row(mainAxisAlignment: MainAxisAlignment.center, children: List.generate(5, (i) => IconButton(icon: Icon(i < rating ? Icons.star : Icons.star_border, color: Colors.amber), onPressed: () => setState(() => rating = i + 1.0)))),
const SizedBox(height: 12),
TextField(controller: commentCtrl, maxLines: 4, decoration: const InputDecoration(border: OutlineInputBorder(), hintText: 'Escreva um comentário (opcional)')),
const SizedBox(height: 12),
ElevatedButton(onPressed: () { ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Avaliação enviada (simulado)'))); Navigator.pushReplacementNamed(context, '/home'); }, child: const Padding(padding: EdgeInsets.symmetric(vertical: 12), child: Text('Enviar')))
]),
),
);
}
}