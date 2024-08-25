import 'package:flutter/material.dart';
import 'package:homework_app_10/color.dart';
import 'package:homework_app_10/screen/item_screen.dart';
import 'package:homework_app_10/screen/vegetables_class.dart';

class ListCard extends StatelessWidget {
  final int index2;
  const ListCard({super.key, required this.index2});

  @override
  Widget build(BuildContext context) {
    VegetablesClass itemCard = VegetablesList[index2];
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ItemScreen(index2: index2);
        }));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 20),
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
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Price(itemCard: itemCard),
                  SizedBox(
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
                        child: Icon(
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
                        child: Icon(
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
