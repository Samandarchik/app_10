import 'package:flutter/material.dart';
import 'package:homework_app_10/color.dart';
import 'package:homework_app_10/screen/checkout.dart';
import 'package:homework_app_10/widget/vegetables_class.dart';

class ItemScreen extends StatelessWidget {
  final int index2;
  const ItemScreen({super.key, required this.index2});

  @override
  Widget build(BuildContext context) {
    VegetablesClass vegetablesClass = vegetablesList[index2];

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .40,
              width: double.infinity,
              child: Image.asset(
                  fit: BoxFit.fill, "assets/${vegetablesClass.name}.png"),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * .65,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kbackgroundColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 25),
                        child: Text(
                          vegetablesClass.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 35),
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: vegetablesClass.price.toString(),
                                style: kRichText,
                                children: [
                                  WidgetSpan(
                                      child: SizedBox(
                                    height: 20,
                                  ))
                                ]),
                            TextSpan(
                              text: " € / ${vegetablesClass.kg}\n\n",
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            TextSpan(
                                text: "${vegetablesClass.gram}",
                                style: TextStyle(color: Color(0xFF06BE77)))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Spain",
                        style: kRichText.copyWith(fontSize: 25),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 90,
                        child: Text(
                          vegetablesClass.title,
                          style: TextStyle(fontSize: 16, color: Colors.black38),
                        ),
                      ),
                      Spacer(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 55,
                            width: 85,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black38)),
                            margin: EdgeInsets.only(
                              bottom: MediaQuery.of(context).size.height * .07,
                            ),
                            child: Icon(Icons.favorite_border),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Checkout()));
                            },
                            child: Container(
                              height: 55,
                              width: MediaQuery.of(context).size.width * .58,
                              decoration: BoxDecoration(
                                color: kPrimeryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              margin: EdgeInsets.only(
                                  bottom:
                                      MediaQuery.of(context).size.height * .07,
                                  left: 35),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.shopping_basket_outlined,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "add to cart".toUpperCase(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
