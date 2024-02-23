import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FoodPage extends StatefulWidget {
  const FoodPage(
      {required this.cost, required this.foodName, required this.path});
  final double cost;
  final String foodName;
  final String path;
  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  bool ispreesed = false;
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
          image: AssetImage("images/${widget.path}.jpg"),
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
          colorFilter: const ColorFilter.mode(Colors.amber, BlendMode.dstATop),
          alignment: Alignment.center,
        ),
      ),
      constraints: const BoxConstraints.expand(),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.black, Colors.transparent],
              stops: [0.3, 0.9],
              begin: Alignment.bottomRight),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            textBaseline: TextBaseline.alphabetic,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
              Align(
                child: IconButton(
                  icon: Icon(
                    FontAwesomeIcons.solidHeart,
                    color: !ispreesed ? Colors.white : Colors.red,
                  ),
                  iconSize: 20,
                  onPressed: () {
                    setState(() {
                      ispreesed = !ispreesed;
                    });
                  },
                ),
                alignment: Alignment.topRight,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "${widget.cost} \$",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "${widget.foodName}",
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
