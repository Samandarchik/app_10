import 'package:flutter/material.dart';
import 'package:homework_app_10/color.dart';

class Genres extends StatelessWidget {
  final int index;
  const Genres({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    Vegetablesbuild vegetablesbuild = vegetablesbuildList[index];
    return Container(
      padding: EdgeInsets.all(6),
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 80,
      child: ListView.builder(
          itemCount: vegetablesbuildList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Genrecard(
                genre: vegetablesbuild.name,
                color: false,
              )),
    );
  }
}

class Genrecard extends StatelessWidget {
  final String genre;
  final bool color;
  const Genrecard({super.key, required this.genre, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: kWhiteColor),
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Center(
        child: Text(
          genre,
          style: color ? kRowItemtrue : kRowItemfalse,
        ),
      ),
    );
  }
}

class Vegetablesbuild {
  String name;
  bool color;
  Vegetablesbuild({required this.name, required this.color});
}

List<Vegetablesbuild> vegetablesbuildList = [
  Vegetablesbuild(name: "Cabbage and lettuce (14)", color: true),
  Vegetablesbuild(name: " and lettuce ", color: false),
  Vegetablesbuild(name: " lettuce (14)", color: true),
  Vegetablesbuild(name: " and lettuce )", color: true),
  Vegetablesbuild(name: "ettuce (14)", color: true),
];
