import 'package:flutter/material.dart';
import 'package:homework_app_10/screen/vegetables_screen.dart';

class ItemScreen extends StatelessWidget {
  final int index2;
  const ItemScreen({super.key, required this.index2});

  @override
  Widget build(BuildContext context) {
    VegetablesClass vegetablesClass = VegetablesList[index2];

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
                  color: Colors.white,
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
