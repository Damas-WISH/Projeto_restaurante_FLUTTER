import 'product.dart';


class Restaurant {
final String id;
final String name;
final String category;
final double rating;
final String time;
final String image;
final List<Product> menu;


Restaurant({required this.id, required this.name, required this.category, required this.rating, required this.time, required this.image, required this.menu});
}