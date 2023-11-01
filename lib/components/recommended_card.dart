import 'package:flutter/material.dart';

Widget recommendedCard() {
  return SizedBox(
      width: 200,
      child: Card(
          child: Column(children: [
        ClipRRect(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10), topLeft: Radius.circular(10)),
            child: Image.network(
              "https://www.abhibus.com/blog/wp-content/uploads/2023/06/Shimla-3-Days-Itinerary-768x512.jpg",
              width: 200,
              height: 100,
              fit: BoxFit.cover,
            )),
        Container(
            margin: const EdgeInsets.all(10),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Accord International",
                    style: TextStyle(
                        fontFamily: 'NordnetSans',
                        fontSize: 13,
                        fontWeight: FontWeight.w700)),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Color(0xFF0868F8),
                      size: 12,
                    ),
                    Text("4.0",
                        style: TextStyle(
                            fontFamily: 'NordnetSans',
                            fontSize: 10,
                            fontWeight: FontWeight.w700))
                  ],
                )
              ],
            )),
        Container(
            margin: const EdgeInsets.only(
              right: 10,
              left: 10,
            ),
            child: const Row(children: [
              Icon(
                Icons.location_pin,
                size: 12,
              ),
              Text(
                " Uttrakhand, India",
                style: TextStyle(fontSize: 12),
              )
            ])),
        Container(
            margin: const EdgeInsets.all(10),
            child: const Row(children: [
              SizedBox(
                  width: 160,
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry...",
                    style: TextStyle(fontSize: 11),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ))
            ]))
      ])));
}
