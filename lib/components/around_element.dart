import 'package:flutter/material.dart';

Widget aroundElement() {
  return Container(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            child: Image.network(
              "https://www.abhibus.com/blog/wp-content/uploads/2023/06/Shimla-3-Days-Itinerary-768x512.jpg",
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            )),
        Image.network(
          "https://icon-library.com/images/india-flag-icon/india-flag-icon-29.jpg",
          width: 20,
          height: 20,
        ),
        const Text("Uttrakhand",
            style: TextStyle(
                fontFamily: 'NordnetSans',
                fontSize: 10,
                fontWeight: FontWeight.w700))
      ]));
}
