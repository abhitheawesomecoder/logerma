import 'package:assignment/components/dropdown.dart';
import 'package:assignment/components/dropdown_control.dart';
import 'package:assignment/components/search_button.dart';
import 'package:assignment/components/text_input.dart';
import 'package:flutter/material.dart';

Widget searchForm(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;

  return Container(
    padding: const EdgeInsets.all(20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Choose Date to View Prices",
            style: TextStyle(
                fontFamily: 'NordnetSans',
                fontSize: 16,
                fontWeight: FontWeight.w700)),
        textInput(Icons.search, "Search..."),
        Row(children: [
          SizedBox(
              width: screenWidth / 2 - 25,
              child: textInput(Icons.calendar_month, "Check-In & Out")),
          Container(
              margin: const EdgeInsets.only(left: 10),
              width: screenWidth / 2 - 25,
              child: textInput(Icons.calendar_month, "Check-In & Out"))
        ]),
        dropdownControl(const DropdownMenuControl(),
            const DropdownMenuControl(), const DropdownMenuControl()),
        searchButton(context)
      ],
    ),
  );
}
