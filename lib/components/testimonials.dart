import 'package:assignment/components/testimonial.dart';
import 'package:flutter/material.dart';

Widget testimonials() {
  return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Testimonials",
                style: TextStyle(
                    fontFamily: 'NordnetSans',
                    fontSize: 16,
                    fontWeight: FontWeight.w700)),
            Container(
                margin: const EdgeInsets.only(top: 10),
                height: 195,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    testimonial(),
                    testimonial(),
                    testimonial(),
                    testimonial(),
                    testimonial()
                  ],
                ))
          ]));
}
