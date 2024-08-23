import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:homework_app_10/color.dart';
import 'package:homework_app_10/screen/vegetables_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "  Categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
            SizedBox(
              height: 20,
            ),
            MySearchBar(),
            SizedBox(
              height: 30,
            ),
            Expanded(
                child: MasonryGridView.builder(
                    gridDelegate:
                        SliverSimpleGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemCount: categoriesClassList.length,
                    itemBuilder: (context, index) {
                      CategoriesClass categoriesClass =
                          categoriesClassList[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return VegetablesCard(index: index);
                          }));
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              border: Border.all(color: Colors.black38)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: Image.asset(
                                    fit: BoxFit.fill,
                                    "assets/${categoriesClass.categoryName}.png"),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15.0, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      categoriesClass.categoryName,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(categoriesClass.categoryNumber),
                                    SizedBox(
                                      height: 20,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(5),
      height: 60,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          color: Colors.white,
          borderRadius: BorderRadius.circular(30)),
      child: TextFormField(
        cursorColor: Colors.black,
        decoration: const InputDecoration(
            focusColor: Colors.black,
            icon: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.search_outlined,
                size: 35,
              ),
            ),
            hintText: "Search",
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.black38)),
      ),
    );
  }
}

class CategoriesClass {
  final String categoryName;
  final String categoryNumber;
  CategoriesClass({
    required this.categoryName,
    required this.categoryNumber,
  });
}

List<CategoriesClass> categoriesClassList = [
  CategoriesClass(categoryName: "Vegetables", categoryNumber: "(43)"),
  CategoriesClass(categoryName: "Fruits", categoryNumber: "(32)"),
  CategoriesClass(categoryName: "Bread", categoryNumber: "(22)"),
  CategoriesClass(categoryName: "Sweets", categoryNumber: "(56)"),
  CategoriesClass(categoryName: "Pasta", categoryNumber: "(43)"),
  CategoriesClass(categoryName: "Drinks", categoryNumber: "(43)"),
];
