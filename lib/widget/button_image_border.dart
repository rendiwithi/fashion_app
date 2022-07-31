import 'package:fashion_app/static/general.dart';
import 'package:flutter/material.dart';

Widget buttonImageBorder({
  required double width,
  required String image,
  required String title,
  required Function()? pressed,
}) {
  return ElevatedButton(
    onPressed: pressed,
    style: ElevatedButton.styleFrom(
      primary: Colors.white,
      fixedSize: Size(width, 60),
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
            child: Text(title,style: TextStyle(color: mainColor),),
          ),
        ),
      ],
    ),
  );
}
