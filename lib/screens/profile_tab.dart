import 'package:flutter/material.dart';


class ProfileTab extends StatelessWidget {
const ProfileTab({super.key});


@override
Widget build(BuildContext context) {
return SafeArea(
child: Padding(
padding: const EdgeInsets.all(12.0),
child: Column(children: [
const CircleAvatar(radius: 40, child: Icon(Icons.person, size: 40)),
const SizedBox(height: 12),
const Text('Nome do Usuário', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
const SizedBox(height: 6),
const Text('usuario@email.com'),
const SizedBox(height: 12),
ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/profile'), child: const Text('Abrir perfil'))
]),
),
);
}
}