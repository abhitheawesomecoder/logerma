import 'package:assignment/components/around_element.dart';
import 'package:flutter/material.dart';

Widget aroundYou() {
  return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Around You",
                style: TextStyle(
                    fontFamily: 'NordnetSans',
                    fontSize: 16,
                    fontWeight: FontWeight.w700)),
            Container(
                margin: const EdgeInsets.only(top: 10),
                height: 130,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    aroundElement(),
                    aroundElement(),
                    aroundElement(),
                    aroundElement(),
                    aroundElement(),
                    aroundElement(),
                    aroundElement(),
                    aroundElement()
                  ],
                ))
          ]));
}
