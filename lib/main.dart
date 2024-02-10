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
class RatingComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 19.0,
                    color: Color.fromARGB(255, 212, 186, 14),
                  ),
                  Text(
                    "4.8",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      fontFamily: "Sora",
                    ),
                  ),
                  Text(
                    " (230)",
                    style: TextStyle(
                      fontSize: 11.0,
                      fontFamily: "Sora",
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [SizedBox(width: 60)],
          ),
          Container(
            width: 43.0,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset("assets/images/bean.jpg", width: 8.0),
          ),
          SizedBox(width: 18.0),
          Container(
            width: 43.0,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset("assets/images/milk.jpg", width: 8.0),
          ),
        ],
      ),
    );
  }
}



class CoffeeDescription extends StatelessWidget {
  final String description;

  const CoffeeDescription({
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 50.0, top: 5.0),
          child: Text(
            "Description",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50.0, top: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 250.0,
                child: Expanded(
                  child: RichText(
                    textAlign: TextAlign.justify,
                    softWrap: true,
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 11.8,
                        color: Colors.grey,
                        fontFamily: "Sora",
                      ),
                      children: [
                        TextSpan(
                          text: description,
                        ),
                        TextSpan(
                          text: "Read More",
                          style: TextStyle(
                            color: Color.fromARGB(218, 144, 65, 36),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}



class DividerComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 15,
      width: 250,
      child: Divider(
        color: Colors.grey[300],
      ),
    );
  }
}

class SizeComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0, top: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Size",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: Colors.black,
              fontFamily: "Sora",
            ),
          )
        ],
      ),
    );
  }
}

class CoffeeSizeComponent extends StatelessWidget {
  final List<String> sizes;

  const CoffeeSizeComponent({
    required this.sizes,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: sizes.map((size) {
          return Container(
            width: 80.0,
            height: 35.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: size == 'M'
                  ? const Color.fromARGB(104, 210, 184, 174)
                  : Colors.white,
              border: Border.all(
                style: BorderStyle.solid,
                color: size == 'M'
                    ? const Color.fromARGB(218, 144, 65, 36)
                    : Colors.grey,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              size,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Sora",
                fontSize: 14.0,
                color: size == 'M'
                    ? Color.fromARGB(218, 144, 65, 36)
                    : Colors.black,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}


class CoffeePrice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, top: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: .5, bottom: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Price",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    "\$ 4.53",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Sora",
                      color: Color.fromARGB(218, 144, 65, 36),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: 190.0,
            height: 45.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color.fromARGB(218, 144, 65, 36),
              border: Border.all(style: BorderStyle.none, color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "Buy Now",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Sora",
                fontSize: 14.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}