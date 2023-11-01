import 'package:flutter/material.dart';

Widget textInput(IconData icon, String? placeholderText) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: const Color(0xFF0868F8),
        width: 1.0,
      ),
      borderRadius: BorderRadius.circular(4.0),
    ),
    margin: const EdgeInsets.only(top: 10),
    child: Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8, top: 15, bottom: 15),
          child: Icon(
            icon,
            color: const Color(0xFF1A232F),
            size: 25,
          ),
        ),
        Expanded(
          child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: placeholderText,
              hintStyle: const TextStyle(color: Color(0xFF1A232F)),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              isDense: true,
            ),
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
        )
      ],
    ),
  );
}
