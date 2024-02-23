import 'package:flutter/material.dart';
import 'package:food_app/Extra/Constraints.dart';

class CategoryItem extends StatefulWidget {
  CategoryItem({required this.title, required this.isChoosed});
  String title;
  bool isChoosed;
  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: widget.isChoosed ? Colors.amberAccent : Colors.white,
      ),
      alignment: Alignment.center,
      margin: const EdgeInsets.only(right: 10),
      child: Text(
        widget.title,
        style: kCategoryTextStyle,
      ),
    );
  }
}
