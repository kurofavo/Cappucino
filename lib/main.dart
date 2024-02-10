import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
        body: ViewScreen()
      ),
    );
  }
}

class ViewScreen extends StatelessWidget {
  const ViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ScreenHeading(),
            SizedBox(height: 10.0),
            CoffeeImageComponent(),
            SizedBox(height: 10.0),
            CoffeeInfoComponent(coffeeName: "Cappuccino", description: "with Chocolate",),
          ],
        ),
      ),
    );
  }
}


class ScreenHeading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(children: [Image.asset("assets/images/arrow_left.jpg")]),
        Column(
          children: [
            Text(
              "Detail",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                fontFamily: "Sora",
              ),
            )
          ],
        ),
        Column(children: [Image.asset("assets/images/heart.jpg")]),
      ],
    );
  }
}

class CoffeeImageComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 13.0),
      child: Image.asset(
        "assets/images/coffee_img.jpg",
        width: 250.0,
      ),
    );
  }
}

class CoffeeInfoComponent extends StatelessWidget {
  final String coffeeName;
  final String description;

  const CoffeeInfoComponent({
    required this.coffeeName,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Text(
              coffeeName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                fontFamily: "Sora",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0, top: 3.0),
            child: Text(
              description,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 10.0,
                color: Colors.grey,
                fontFamily: "Sora",
              ),
            ),
          ),
        ],
      ),
    );
  }
}