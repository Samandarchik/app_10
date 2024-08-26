import 'package:flutter/material.dart';
import 'package:homework_app_10/widget/vegetables_class.dart';

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
        style: const TextStyle(color: Colors.black),
        children: [
          TextSpan(
            text: itemCard.price.toString(),
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          TextSpan(
              text: "  € / ${itemCard.kg}",
              style: const TextStyle(fontSize: 18, color: Colors.black38))
        ],
      ),
    );
  }
}
