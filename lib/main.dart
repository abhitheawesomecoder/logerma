import 'package:assignment/components/accomodation_promotion.dart';
import 'package:assignment/components/around_you.dart';
import 'package:assignment/components/header.dart';
import 'package:assignment/components/recent.dart';
import 'package:assignment/components/recommended_property.dart';
import 'package:assignment/components/search_form.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header(widget.title),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                searchForm(context),
                recent(),
                recommendedProperty(),
                aroundYou(),
                accomodationPromotion()
              ],
            ),
          ),
        ));
  }
}
