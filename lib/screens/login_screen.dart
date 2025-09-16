import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
const LoginScreen({super.key});


@override
Widget build(BuildContext context) {
final emailCtrl = TextEditingController();
final passCtrl = TextEditingController();


return Scaffold(
appBar: AppBar(title: const Text('Login')),
body: Padding(
padding: const EdgeInsets.all(16.0),
child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
TextField(controller: emailCtrl, decoration: const InputDecoration(labelText: 'Email')),
const SizedBox(height: 12),
TextField(controller: passCtrl, decoration: const InputDecoration(labelText: 'Senha'), obscureText: true),
const SizedBox(height: 18),
ElevatedButton(onPressed: () => Navigator.pushReplacementNamed(context, '/home'), child: const Text('Entrar')),
TextButton(onPressed: () => Navigator.pushNamed(context, '/register'), child: const Text('Criar conta'))
]),
),
);
}
}