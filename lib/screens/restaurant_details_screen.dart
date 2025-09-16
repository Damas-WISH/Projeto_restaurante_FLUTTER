import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/sample_data.dart';
import '../models/restaurant.dart';
import '../widgets/product_tile.dart';

class RestaurantDetailsScreen extends StatelessWidget {
  const RestaurantDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Recupera o restaurante vindo da navegação
    final restaurant = ModalRoute.of(context)!.settings.arguments as Restaurant?;
    
    // Se não veio nada, pega o primeiro da lista demo
    final r = restaurant ?? demoRestaurants.first;

    return Scaffold(
      appBar: AppBar(title: Text(r.name)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 160,
                color: Colors.grey[300],
                child: const Center(child: Icon(Icons.restaurant_menu, size: 48)),
              ),
              const SizedBox(height: 12),
              Text(r.name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 6),
              Text('${r.category} • ${r.time} • ⭐ ${r.rating}'),
              const SizedBox(height: 12),
              const Text('Cardápio', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
              const SizedBox(height: 8),
              ...r.menu.map((p) => ProductTile(
                product: p,
                onAdd: () { 
                  Navigator.pushNamed(context, '/product', arguments: p); 
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
