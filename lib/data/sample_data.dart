import '../models/product.dart';
import '../models/restaurant.dart';


final demoProducts = [
Product(id: 'p1', name: 'X-Burger', description: 'Hambúrguer artesanal com queijo e molho especial', price: 18.50, image: ''),
Product(id: 'p2', name: 'Pizza Margherita', description: 'Molho de tomate, muçarela e manjericão', price: 32.00, image: ''),
Product(id: 'p3', name: 'Sushi Mix (8 pcs)', description: 'Seleção variada', price: 45.00, image: ''),
Product(id: 'p4', name: 'Refrigerante 600ml', description: 'Coca-Cola', price: 6.00, image: ''),
];


final demoRestaurants = [
Restaurant(id: 'r1', name: 'Burguer House', category: 'Burgers', rating: 4.6, time: '30-40 min', image: '', menu: [demoProducts[0], demoProducts[3]]),
Restaurant(id: 'r2', name: 'La Pizza', category: 'Italiana', rating: 4.4, time: '25-35 min', image: '', menu: [demoProducts[1], demoProducts[3]]),
Restaurant(id: 'r3', name: 'Sakura', category: 'Japonesa', rating: 4.7, time: '40-50 min', image: '', menu: [demoProducts[2], demoProducts[3]]),
];