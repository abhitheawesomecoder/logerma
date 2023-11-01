import 'package:assignment/components/dropdown.dart';
import 'package:assignment/components/dropdown_control.dart';
import 'package:assignment/components/search_button.dart';
import 'package:assignment/components/text_input.dart';
import 'package:flutter/material.dart';

Widget searchForm(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  List<String> room = <String>['Room', 'Two', 'Three', 'Four'];
  List<String> adult = <String>['Adults', 'Two', 'Three', 'Four'];
  List<String> child = <String>['Child', 'Two', 'Three', 'Four'];
  return Column(
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
      dropdownControl(DropdownMenuControl(list: room),
          DropdownMenuControl(list: adult), DropdownMenuControl(list: child)),
      searchButton(context)
    ],
  );
}
