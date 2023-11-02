import 'package:assignment/components/accomodation_promotion.dart';
import 'package:assignment/components/around_you.dart';
import 'package:assignment/components/header.dart';
import 'package:assignment/components/recent.dart';
import 'package:assignment/components/recommended_property.dart';
import 'package:assignment/components/search_form.dart';
import 'package:assignment/components/testimonials.dart';
import 'package:assignment/components/trending_destinations.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loger.ma',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Loger.ma'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget menuList(context, selectedIndex) {
    List<Widget> widgetOptions = <Widget>[
      SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              searchForm(context),
              recent(),
              recommendedProperty(),
              aroundYou(),
              accomodationPromotion(),
              trendingDestinations(),
              testimonials()
            ],
          ),
        ),
      ),
      const Icon(Icons.heart_broken),
      const Icon(Icons.calendar_month),
      const Icon(Icons.person),
    ];
    return widgetOptions.elementAt(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(widget.title),
      body: Center(child: menuList(context, _selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.heart_broken),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF0868F8),
        onTap: _onItemTapped,
      ),
    );
  }
}
