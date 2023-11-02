import 'package:flutter/material.dart';
import 'package:flutter_masonry_view/flutter_masonry_view.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _Gallery();
}

class _Gallery extends State<Gallery> {
  final _items = [
    {'img': 'lib/assets/images/1.jpg', 'title': 'Kerela - India'},
    {'img': 'lib/assets/images/2.jpg', 'title': 'Kerela - India'},
    {'img': 'lib/assets/images/3.jpg', 'title': 'Kerela - India'},
    {'img': 'lib/assets/images/2.jpg', 'title': 'Kerela - India'},
    {'img': 'lib/assets/images/1.jpg', 'title': 'Kerela - India'},
  ];
  @override
  Widget build(BuildContext context) {
    return MasonryView(
      itemPadding: 4,
      listOfItem: _items,
      numberOfColumn: 3,
      itemBuilder: (item) {
        return Stack(alignment: Alignment.bottomLeft, children: <Widget>[
          Image.asset(item['img']),
          Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                item['title'],
                style: const TextStyle(
                    fontFamily: 'NordnetSans',
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 11),
              ))
        ]);
      },
    );
  }
}
