import 'package:flutter/material.dart';
import '../models/restaurant.dart';


class RestaurantCard extends StatelessWidget {
final Restaurant restaurant;
final VoidCallback? onTap;
const RestaurantCard({super.key, required this.restaurant, this.onTap});


@override
Widget build(BuildContext context) {
return Card(
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
margin: const EdgeInsets.symmetric(vertical: 8),
child: ListTile(
onTap: onTap,
leading: Container(width: 64, height: 64, decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(8)), child: const Icon(Icons.restaurant, size: 30)),
title: Text(restaurant.name, style: const TextStyle(fontWeight: FontWeight.bold)),
subtitle: Text('${restaurant.category} • ${restaurant.time}'),
trailing: Column(mainAxisAlignment: MainAxisAlignment.center, children: [const Icon(Icons.star, color: Colors.amber, size: 18), Text(restaurant.rating.toString())]),
),
);
}
}