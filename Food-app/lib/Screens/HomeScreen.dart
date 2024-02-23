import 'package:flutter/material.dart';
import 'ProductsScreen.dart';
import 'package:food_app/Extra/Constraints.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String id = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: kHomeImageDecoration,
        ),
        constraints: const BoxConstraints.expand(),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration:kHomeBoxDecoration,
          constraints: const BoxConstraints.expand(),
          child: Column(
            children: [
              const SizedBox(
                height: 280,
              ),
              Column(
                textBaseline: TextBaseline.alphabetic,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Taking Order ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontFamily: "robo_regular"),
                  ),
                  const Text(
                    "From Faster",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontFamily: "robo_regular"),
                  ),
                  const Text(
                    "Delivery",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 45,
                        fontFamily: "robo_regular"),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "see resturants nearby by adding your location",
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontFamily: "bruno",
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, ProductsScreen.id);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(18.0),
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 40, bottom: 40),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.yellow, Colors.amber],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      ),
                      child: const Text(
                        "start",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      "Now Deliver To your Door 24/7",
                      style: TextStyle(color: Colors.white54),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
