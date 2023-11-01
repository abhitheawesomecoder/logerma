import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

AppBar header(title) {
  return AppBar(
    systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark),
    leading: const Icon(
      Icons.menu,
      size: 25,
      color: Colors.white,
    ),
    centerTitle: true,
    backgroundColor: const Color(0xFF0868F8),
    title: Text(title,
        style: const TextStyle(
            fontFamily: 'NordnetSans',
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w700)),
    actions: const [
      Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(
            Icons.notifications,
            size: 25,
            color: Colors.white,
          ))
    ],
  );
}
