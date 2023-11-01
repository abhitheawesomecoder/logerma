import 'package:assignment/components/scroller.dart';
import 'package:flutter/material.dart';

Widget accomodationPromotion() {
  return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Accommodation Promotions",
                style: TextStyle(
                    fontFamily: 'NordnetSans',
                    fontSize: 16,
                    fontWeight: FontWeight.w700)),
            Container(
                margin: const EdgeInsets.only(top: 10),
                height: 173,
                child: const Scroller())
          ]));
}
