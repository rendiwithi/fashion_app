import 'package:fashion_app/static/general.dart';
import 'package:flutter/material.dart';

Widget buttonText({
  required double width,
  required String title,
  required Function()? pressed,
}) {
  return ElevatedButton(
    onPressed: pressed,
    style: ElevatedButton.styleFrom(
      primary: mainColor,
      fixedSize: Size(width, 50),
    ),
    child: Text(title),
  );
}
