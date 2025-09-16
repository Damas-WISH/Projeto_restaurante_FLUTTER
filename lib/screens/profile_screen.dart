import 'package:flutter/material.dart';


class ProfileScreen extends StatelessWidget {
const ProfileScreen({super.key});


@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: const Text('Perfil')),
body: Padding(
padding: const EdgeInsets.all(12.0),
child: Column(children: [
const CircleAvatar(radius: 50, child: Icon(Icons.person, size: 50)),
const SizedBox(height: 12),
const Text('João Silva', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
const SizedBox(height: 6),
const Text('joao@email.com'),
const SizedBox(height: 12),
ElevatedButton(onPressed: () {}, child: const Text('Editar perfil')),
ElevatedButton(onPressed: () => Navigator.pushReplacementNamed(context, '/login'), child: const Text('Sair'))
]),
),
);
}
}