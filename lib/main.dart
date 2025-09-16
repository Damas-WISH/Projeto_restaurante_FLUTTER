import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/home_shell.dart';
import 'screens/restaurant_details_screen.dart';
import 'screens/product_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/checkout_screen.dart';
import 'screens/review_screen.dart';
import 'screens/profile_screen.dart';


import 'providers/cart_provider.dart';


void main() {
runApp(const QuickOrderApp());
}


class QuickOrderApp extends StatelessWidget {
const QuickOrderApp({super.key});


@override
Widget build(BuildContext context) {
return ChangeNotifierProvider(
create: (_) => CartProvider(),
child: MaterialApp(
debugShowCheckedModeBanner: false,
title: 'QuickOrder',
theme: ThemeData(primarySwatch: Colors.deepOrange),
initialRoute: '/',
routes: {
'/': (context) => const SplashScreen(),
'/login': (context) => const LoginScreen(),
'/register': (context) => const RegisterScreen(),
'/home': (context) => const HomeShell(),
'/restaurant': (context) => const RestaurantDetailsScreen(),
'/product': (context) => const ProductScreen(),
'/cart': (context) => const CartScreen(),
'/checkout': (context) => const CheckoutScreen(),
'/review': (context) => const ReviewScreen(),
'/profile': (context) => const ProfileScreen(),
},
),
);
}
}