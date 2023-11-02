import 'package:flutter/material.dart';

Widget testimonial() {
  return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFF1A232F)),
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(right: 10),
      width: 320,
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(40)),
            child: Image.network(
                "https://pbs.twimg.com/media/FjU2lkcWYAgNG6d.jpg",
                width: 80,
                height: 80)),
        Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            width: 200,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("John Parker",
                          style: TextStyle(
                              fontFamily: 'NordnetSans',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white)),
                      Row(children: [
                        Icon(
                          Icons.star,
                          color: Color(0xFFF02929),
                          size: 13,
                        ),
                        Text("  4.0",
                            style: TextStyle(
                                fontFamily: 'NordnetSans',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.white))
                      ]),
                    ]),
                Text("Treebo Trend Siddharth",
                    style: TextStyle(
                        fontFamily: 'NordnetSans',
                        fontSize: 12,
                        color: Colors.white)),
                Text("AMAZING CUSTOMER SERVICE",
                    style: TextStyle(
                        fontFamily: 'NordnetSans',
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                    style: TextStyle(
                        fontFamily: 'NordnetSans',
                        fontSize: 10,
                        color: Colors.white))
              ],
            ))
      ]));
}
