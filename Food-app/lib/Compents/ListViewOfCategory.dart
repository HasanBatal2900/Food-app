import 'package:flutter/material.dart';
import 'package:food_app/Compents/categoryItem.dart';
import 'package:food_app/Extra/Constraints.dart';

class ListViewOfCategory extends StatelessWidget {
  const ListViewOfCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: ((context, index) => categoryList[index]),
        addAutomaticKeepAlives: true,
      ),
    );
  }
}
