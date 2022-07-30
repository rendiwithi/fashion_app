import 'package:fashion_app/static/general.dart';
import 'package:flutter/material.dart';

Widget buttonImage({
  required double width,
  required String image,
  required String title,
  required Function()? pressed,
}) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: ElevatedButton(
      onPressed: pressed,
      style: ElevatedButton.styleFrom(
        primary: mainColor,
        fixedSize: Size(width, 50),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(image),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Text(title),
            ),
          ),
        ],
      ),
    ),
  );
}
