import 'package:flutter/material.dart';
import 'restaurants_tab.dart';
import 'cart_tab.dart';
import 'profile_tab.dart';


class HomeShell extends StatefulWidget {
const HomeShell({super.key});


@override
State<HomeShell> createState() => _HomeShellState();
}


class _HomeShellState extends State<HomeShell> {
int _selected = 0;
final _pages = const [RestaurantsTab(), CartTab(), ProfileTab()];


@override
Widget build(BuildContext context) {
return Scaffold(
body: _pages[_selected],
bottomNavigationBar: BottomNavigationBar(
currentIndex: _selected,
onTap: (i) => setState(() => _selected = i),
items: const [
BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Restaurantes'),
BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Carrinho'),
BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
],
),
);
}
}