import 'package:flutter/material.dart';

Widget searchButton(context) {
  final screenWidth = MediaQuery.of(context).size.width;
  return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextButton(
          onPressed: () => {},
          style: TextButton.styleFrom(
              fixedSize: Size(screenWidth - 20, 50),
              backgroundColor: const Color(0xFF0868F8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              )),
          child: const Text(
            "Search",
            style: TextStyle(color: Colors.white, fontSize: 18),
          )));
}
