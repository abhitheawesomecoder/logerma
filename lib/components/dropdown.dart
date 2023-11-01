import 'package:flutter/material.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class DropdownMenuControl extends StatefulWidget {
  const DropdownMenuControl({super.key});

  @override
  State<DropdownMenuControl> createState() => _DropdownMenuControlState();
}

class _DropdownMenuControlState extends State<DropdownMenuControl> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return DropdownMenu<String>(
      inputDecorationTheme:
          const InputDecorationTheme(border: InputBorder.none),
      width: screenWidth / 3 - 20,
      initialSelection: list.first,
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}
