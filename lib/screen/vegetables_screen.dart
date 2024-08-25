import 'package:flutter/material.dart';
import 'package:homework_app_10/genres.dart';
import 'package:homework_app_10/screen/home_page.dart';
import 'package:homework_app_10/widget/list_card.dart';

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
                Genres(index: index),
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

class VegetablesClass {
  final String name;
  final double price;
  final String kg;
  final String gram;
  final String title;
  VegetablesClass(
      {required this.name,
      required this.price,
      required this.kg,
      required this.gram,
      required this.title});
}
