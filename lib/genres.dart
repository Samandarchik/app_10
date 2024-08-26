import 'package:flutter/material.dart';
import 'package:homework_app_10/color.dart';

class Vegetablesbuild {
  String name;
  bool color1;
  Vegetablesbuild({required this.name, required this.color1});
}

List<Vegetablesbuild> vegetablesbuildList = [
  Vegetablesbuild(name: "Cabbage and lettuce (14)", color1: true),
  Vegetablesbuild(name: "Cucumbers and tomatoes (10)", color1: false),
  Vegetablesbuild(name: "lettuce (14)", color1: false),
  Vegetablesbuild(name: "lettuce (14)", color1: false),
];

List<Vegetablesbuild> vegetablesbuildList1 = [
  Vegetablesbuild(name: "Oinons and garlic (8)", color1: false),
  Vegetablesbuild(name: "Peppers (7)", color1: false),
  Vegetablesbuild(name: "Potatoes and carrots (4)", color1: false),
];

class Genres extends StatefulWidget {
  final int index;
  final List<Vegetablesbuild> vegetablesbuildList;

  const Genres({
    super.key,
    required this.index,
    required this.vegetablesbuildList,
  });

  @override
  State<Genres> createState() => _GenresState();
}

class _GenresState extends State<Genres> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 70,
      child: ListView.builder(
        itemCount: widget.vegetablesbuildList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, idx) {
          Vegetablesbuild vegetable = widget.vegetablesbuildList[idx];
          return Genrecard(
            genre: vegetable.name,
            iscolor: vegetable.color1,
            onTap: () {
              setState(() {
                for (var veg in widget.vegetablesbuildList) {
                  veg.color1 = false;
                }
                vegetable.color1 = true;
              });
            },
          );
        },
      ),
    );
  }
}

class Genrecard extends StatelessWidget {
  final String genre;
  final bool iscolor;
  final VoidCallback onTap;

  const Genrecard({
    super.key,
    required this.genre,
    required this.iscolor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: iscolor ? kLingColor : kWhiteColor,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Row(
          children: [
            if (iscolor)
              const Icon(
                Icons.check,
                color: kTextColor,
              ),
            const SizedBox(width: 8),
            Text(
              genre,
              style: iscolor ? kRowItemtrue : kRowItemfalse,
            ),
          ],
        ),
      ),
    );
  }
}
