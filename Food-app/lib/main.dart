import 'package:flutter/material.dart';
import 'package:food_app/Screens/ProductsScreen.dart';
import 'Screens/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
initialRoute: HomeScreen.id,
routes: {

HomeScreen.id :(context) =>const HomeScreen(),
ProductsScreen.id:(context) =>  ProductsScreen(),
},
    );
  }
}