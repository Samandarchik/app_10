import 'package:flutter/material.dart';
import 'package:homework_app_10/color.dart';
import 'package:homework_app_10/screen/home_screen.dart';
import 'package:homework_app_10/screen/item_screen.dart';

class VegetablesCard extends StatelessWidget {
  final int index;
  const VegetablesCard({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    CategoriesClass categoriesClass = categoriesClassList[index];
    return Scaffold(
      body: Stack(
        children: [
          Positioned(right: 0, top: 0, child: Image.asset("assets/Vector.png")),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  " ${categoriesClass.categoryName}",
                  style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                MySearchBar(),
                SizedBox(
                  height: 80,
                ),
                Expanded(
                    child: ListView.builder(
                        itemCount: categoriesClassList.length,
                        itemBuilder: (context, index1) {
                          return ListCard(
                            index2: index1,
                          );
                        }))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

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
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: itemCard.price.toString(),
            style: TextStyle(fontSize: 25),
          ),
          TextSpan(
              text: "  € / ${itemCard.kg}",
              style: TextStyle(fontSize: 18, color: Colors.black38))
        ],
      ),
    );
  }
}

class VegetablesClass {
  final String name;
  final double price;
  final String kg;
  VegetablesClass({required this.name, required this.price, required this.kg});
}

List<VegetablesClass> VegetablesList = [
  VegetablesClass(name: "Boston Lettuce", price: 1.10, kg: "piece"),
  VegetablesClass(name: "Purple Cauliflower", price: 1.80, kg: "kg"),
  VegetablesClass(name: "Savoy Cabbage", price: 1.45, kg: "kg"),
  VegetablesClass(name: "Boston Lettuce", price: 1.42, kg: "kg"),
  VegetablesClass(name: "Boston Lettuce", price: 2.56, kg: "kg"),
  VegetablesClass(name: "Boston Lettuce", price: 3.52, kg: "kg"),
  VegetablesClass(name: "Boston Lettuce", price: 1.35, kg: "kg"),
];
