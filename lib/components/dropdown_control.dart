import 'package:flutter/material.dart';

Widget dropdownControl(Widget dropdown1, Widget dropdown2, Widget dropdown3) {
  return Container(
      //const Color(0xFF0868F8)
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF0868F8),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(4.0),
      ),
      margin: const EdgeInsets.only(top: 10),
      child: Row(children: [
        const Padding(
          padding: EdgeInsets.only(left: 8, top: 15, bottom: 15),
          child: Icon(
            Icons.bed_outlined,
            color: Color(0xFF1A232F),
            size: 25,
          ),
        ),
        Expanded(child: dropdown1),
        const Text("|"),
        const Padding(
          padding: EdgeInsets.only(left: 8, top: 15, bottom: 15),
          child: Icon(
            Icons.people_outline,
            color: Color(0xFF1A232F),
            size: 25,
          ),
        ),
        Expanded(child: dropdown2),
        const Text("|"),
        const Padding(
          padding: EdgeInsets.only(left: 8, top: 15, bottom: 15),
          child: Icon(
            Icons.child_care,
            color: Color(0xFF1A232F),
            size: 25,
          ),
        ),
        Expanded(child: dropdown3)
      ]));
}
