import 'package:flutter/material.dart';
import 'package:food_app/Extra/Constraints.dart';
import 'package:food_app/Compents/ListViewOfCategory.dart';

class ProductsScreen extends StatefulWidget {
  static const String id = "/products";
  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10, top: 50),
            child: Column(
              textBaseline: TextBaseline.alphabetic,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_shopping_cart,
                        color: Colors.black,
                      )),
                ),
                const Text("Food Delivery !", style: kProductTitleTextStyle),
                const SizedBox(
                  height: 20,
                ),
                const ListViewOfCategory(),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.grey.shade300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: const Text(
                      "Free Delivery !",
                      style: kTitleFoodTextStyle,
                    ),
                  ),
                  Flexible(
                    child: Container(
                      height: 600,
                      margin: const EdgeInsets.only(top: 20),
                      child: PageView.builder(
                        itemBuilder: (context, index) => foodList[index],
                        itemCount: foodList.length,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
