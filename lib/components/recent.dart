import 'package:assignment/components/recent_card.dart';
import 'package:flutter/material.dart';

Widget recent() {
  return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Recent",
                style: TextStyle(
                    fontFamily: 'NordnetSans',
                    fontSize: 16,
                    fontWeight: FontWeight.w700)),
            SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [recentCard(), recentCard()],
                ))
          ]));
}
