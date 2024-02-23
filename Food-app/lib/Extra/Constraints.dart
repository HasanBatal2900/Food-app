import 'package:flutter/material.dart';
import 'package:food_app/Compents/categoryItem.dart';
import 'package:food_app/Compents/FoodPage.dart';

const kProductTitleTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 22,
  fontFamily: "anton",
  fontWeight: FontWeight.bold,
);
const kCategoryTextStyle = TextStyle(
    color: Colors.black54,
    fontSize: 15,
    fontFamily: "bruno",
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.italic);

List<CategoryItem> categoryList = [
  CategoryItem(
    title: "Pizza",
    isChoosed: true,
  ),
  CategoryItem(
    title: "Burgres",
    isChoosed: false,
  ),
  CategoryItem(
    title: "Kebab",
    isChoosed: false,
  ),
  CategoryItem(
    title: "Dessert",
    isChoosed: false,
  ),
  CategoryItem(title: "Salad", isChoosed: false),
];

const kTitleFoodTextStyle = TextStyle(
  color: Colors.black54,
  fontSize: 18,
  fontFamily: "robo",
  fontStyle: FontStyle.italic,
);

List<FoodPage> foodList = [
  const FoodPage(
    cost: 200.0,
    foodName: "Pizza Margherita ",
    path: "one",
  ),
  const FoodPage(cost: 100.0, foodName: " Neapolitan Pizza ", path: "two"),
  const FoodPage(
    cost: 250.0,
    foodName: "Vegetarian Pizza",
    path: "three",
  ),
];

const kHomeBoxDecoration = BoxDecoration(
  gradient: LinearGradient(
      colors: [Colors.black, Colors.transparent],
      stops: [0.3, 0.6],
      begin: Alignment.bottomRight),
);

const kHomeImageDecoration = DecorationImage(
  image: AssetImage("images/starter-image.jpg"),
  fit: BoxFit.cover,
  opacity: 0.9,
  colorFilter: ColorFilter.mode(Colors.black54, BlendMode.dstOver),
  filterQuality: FilterQuality.high,
);
