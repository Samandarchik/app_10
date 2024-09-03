import 'package:flutter/material.dart';
import 'package:homework_app_10/genres.dart';
import 'package:homework_app_10/screen/home_page.dart';
import 'package:homework_app_10/widget/list_card.dart';
import 'package:homework_app_10/widget/search.dart';

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
          Positioned(right: 0, top: 0, child: Image.asset("assets/barg.png")),
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
                Genres(index: index, vegetablesbuildList: vegetablesbuildList),
                Genres(index: index, vegetablesbuildList: vegetablesbuildList1),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: ListView.builder(
                        padding: EdgeInsets.zero,
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
