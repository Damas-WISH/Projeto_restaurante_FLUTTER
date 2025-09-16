import 'package:flutter/material.dart';
import '../data/sample_data.dart';
import '../widgets/restaurant_card.dart';


class RestaurantsTab extends StatelessWidget {
const RestaurantsTab({super.key});


@override
Widget build(BuildContext context) {
return SafeArea(
child: Padding(
padding: const EdgeInsets.all(12.0),
child: Column(children: [
TextField(decoration: InputDecoration(prefixIcon: const Icon(Icons.search), hintText: 'Buscar restaurantes', border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)))),
const SizedBox(height: 12),
Expanded(
child: ListView.builder(
itemCount: demoRestaurants.length,
itemBuilder: (context, index) {
final r = demoRestaurants[index];
return RestaurantCard(restaurant: r, onTap: () => Navigator.pushNamed(context, '/restaurant', arguments: r));
},
),
)
]),
),
);
}
}