import 'package:flutter/material.dart';

Widget recentCard() {
  return SizedBox(
      width: 300,
      child: Card(
        child: Row(children: [
          Padding(
              padding: EdgeInsets.all(5),
              child: Image.network(
                "https://www.abhibus.com/blog/wp-content/uploads/2023/06/Shimla-3-Days-Itinerary-768x512.jpg",
                width: 120,
                height: 100,
              )),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Uttrakhand",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    fontFamily: 'NordnetSans'),
              ),
              Text(
                "29-06-2023, 10:39 AM",
                style: TextStyle(fontFamily: 'NordnetSans'),
              )
            ],
          )
        ]),
      ));
}
