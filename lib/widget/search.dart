import 'package:flutter/material.dart';

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
