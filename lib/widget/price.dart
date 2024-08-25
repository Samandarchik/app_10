import 'package:flutter/material.dart';
import 'package:homework_app_10/screen/vegetables_screen.dart';

class Price extends StatelessWidget {
  const Price({
    super.key,
    required this.itemCard,
  });

  final VegetablesClass itemCard;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(color: Colors.black),
        children: [
          TextSpan(
            text: itemCard.price.toString(),
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          TextSpan(
              text: "  € / ${itemCard.kg}",
              style: TextStyle(fontSize: 18, color: Colors.black38))
        ],
      ),
    );
  }
}
