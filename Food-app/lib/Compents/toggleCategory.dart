import 'package:flutter/material.dart';
import 'categoryItem.dart';



/// You Can You Instead of List of CategortyItem
class toggleButtonsCategory extends StatefulWidget {
  const toggleButtonsCategory({super.key});

  @override
  State<toggleButtonsCategory> createState() => _toggleButtonsCategoryState();
}

class _toggleButtonsCategoryState extends State<toggleButtonsCategory> {
  @override
  List<bool>  isSelected = [true, false, false, false, false];
  Widget build(BuildContext context) {
    return ToggleButtons(
      renderBorder: false,
      isSelected: isSelected,
      borderRadius: BorderRadius.circular(30.0),
      disabledColor: Colors.white,
      fillColor: Colors.amberAccent,
      children: [
        CategoryItem(
          title: "Pizza",
          isChoosed: isSelected[0],
        ),
        CategoryItem(
          title: "Burgres",
          isChoosed: isSelected[1],
        ),
        CategoryItem(
          title: "Kebab",
          isChoosed: isSelected[2],
        ),
        CategoryItem(
          title: "Dessert",
          isChoosed: isSelected[3],
        ),
        CategoryItem(
          title: "Salad",
          isChoosed: isSelected[4],
        ),
      ],
      onPressed: ((indexSelected) {
        setState(() {
          for (var index = 0; index < isSelected.length; index++) {
            if (indexSelected == index) {
              isSelected[indexSelected] = true;
            } else {
              isSelected[index] = false;
            }
          }
        });
      }),
    );
  }
}
