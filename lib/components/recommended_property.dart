import 'package:assignment/components/recommended_card.dart';
import 'package:flutter/material.dart';

Widget recommendedProperty() {
  return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Recommended Property",
                style: TextStyle(
                    fontFamily: 'NordnetSans',
                    fontSize: 16,
                    fontWeight: FontWeight.w700)),
            Container(
                margin: const EdgeInsets.only(top: 10),
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    recommendedCard(),
                    recommendedCard(),
                    recommendedCard(),
                    recommendedCard()
                  ],
                ))
          ]));
}
