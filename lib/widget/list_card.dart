import 'package:flutter/material.dart';
import 'package:homework_app_10/color.dart';
import 'package:homework_app_10/screen/item_screen.dart';
import 'package:homework_app_10/widget/vegetables_class.dart';

class ListCard extends StatelessWidget {
  final int index2;
  const ListCard({super.key, required this.index2});

  @override
  Widget build(BuildContext context) {
    VegetablesClass itemCard = vegetablesList[index2];
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ItemScreen(index2: index2);
        }));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 20),
              height: 128,
              width: 177,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assets/${itemCard.name}.png",
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemCard.name,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Price(itemCard: itemCard),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 40,
                        width: 75,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black26),
                            borderRadius: BorderRadius.circular(10),
                            color: kWhiteColor),
                        child: const Icon(
                          Icons.favorite_border,
                          color: Colors.black38,
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kPrimeryColor),
                        child: const Icon(
                          Icons.shopping_cart_checkout,
                          color: kWhiteColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
