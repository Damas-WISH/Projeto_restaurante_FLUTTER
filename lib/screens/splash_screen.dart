import 'package:flutter/material.dart';


class SplashScreen extends StatelessWidget {
const SplashScreen({super.key});


@override
Widget build(BuildContext context) {
return Scaffold(
body: Container(
color: Theme.of(context).primaryColor,
child: Center(
child: Column(mainAxisSize: MainAxisSize.min, children: [
const Icon(Icons.delivery_dining, size: 96, color: Colors.white),
const SizedBox(height: 12),
const Text('QuickOrder', style: TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold)),
const SizedBox(height: 24),
ElevatedButton(onPressed: () => Navigator.pushReplacementNamed(context, '/login'), child: const Text('Começar'))
]),
),
),
);
}
}