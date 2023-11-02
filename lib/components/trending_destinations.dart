import 'package:assignment/components/gallery.dart';
import 'package:flutter/material.dart';

Widget trendingDestinations() {
  return const Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Trending Destinations",
                style: TextStyle(
                    fontFamily: 'NordnetSans',
                    fontSize: 16,
                    fontWeight: FontWeight.w700)),
            SizedBox(height: 10),
            Gallery()
          ]));
}
