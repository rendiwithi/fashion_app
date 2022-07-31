import 'package:fashion_app/static/general.dart';
import 'package:flutter/material.dart';

Widget inputFieldBorder(
    {required String hint, required TextEditingController controller}) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: TextFormField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: hint,
        contentPadding: const EdgeInsets.all(20),
        focusColor: mainColor,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.black),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: mainColor, width: 2.0),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      controller: controller,
    ),
  );
}
