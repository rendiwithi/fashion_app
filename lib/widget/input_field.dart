import 'package:fashion_app/static/general.dart';
import 'package:flutter/material.dart';

Widget inputField(
    {required String hint, required TextEditingController controller}) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: TextFormField(
      decoration: InputDecoration(
        hintText: hint,
        contentPadding: const EdgeInsets.all(20),
        focusColor: mainColor,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: mainColor,
            width: 2.0,
          ),
        ),
      ),
      controller: controller,
    ),
  );
}
