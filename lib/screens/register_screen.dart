import 'package:flutter/material.dart';


class RegisterScreen extends StatelessWidget {
const RegisterScreen({super.key});


@override
Widget build(BuildContext context) {
final nameCtrl = TextEditingController();
final emailCtrl = TextEditingController();
final phoneCtrl = TextEditingController();
final passCtrl = TextEditingController();


return Scaffold(
appBar: AppBar(title: const Text('Cadastro')),
body: Padding(
padding: const EdgeInsets.all(16.0),
child: Column(children: [
TextField(controller: nameCtrl, decoration: const InputDecoration(labelText: 'Nome completo')),
const SizedBox(height: 8),
TextField(controller: emailCtrl, decoration: const InputDecoration(labelText: 'Email')),
const SizedBox(height: 8),
TextField(controller: phoneCtrl, decoration: const InputDecoration(labelText: 'Telefone')),
const SizedBox(height: 8),
TextField(controller: passCtrl, decoration: const InputDecoration(labelText: 'Senha'), obscureText: true),
const SizedBox(height: 16),
ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('Cadastrar (simulado)'))
]),
),
);
}
}