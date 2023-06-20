import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // to change your app color change this
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(),
    );
  }
}

/// this is a template to start building a UI
/// to start adding any UI you want change what comes after the [ body: ] tag below
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text(
          'Flower Shop',
          style: TextStyle(fontFamily: 'casual'),
        ),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          flowerDetails(context),
        ],
      ),
    );
  }
}

Widget flowerDetails(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(20),
    color: Colors.amber,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        imageGroup(),
        titleGroup(),
        iconGroup(),
        textGroup(),
        buttonGroup(),
      ],
    ),
  );
}

/// Image URL
/// https://newevolutiondesigns.com/images/freebies/yellow-wallpaper-12.jpg
Widget imageGroup() {
  return Image.asset(
    'assets/1.jpg',
    fit: BoxFit.cover,
  );
}

Widget titleGroup() {
  return Container(
    padding: const EdgeInsets.only(top: 16, bottom: 8),
    child: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sunny Flowers',
          style: TextStyle(
            fontSize: 52,
            fontFamily: 'cursive',
          ),
        ),
        Text(
          '12 dosen',
          style: TextStyle(
            color: Colors.black54,
            fontSize: 14,
          ),
        )
      ],
    ),
  );
}

Widget iconGroup() {
  return Container(
    padding: const EdgeInsets.all(10),
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.share,
          size: 40,
          color: Colors.indigo,
        ),
        Icon(
          Icons.favorite,
          size: 40,
          color: Colors.indigo,
        )
      ],
    ),
  );
}

/// here is the text to copy
///Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
Widget textGroup() {
  return Container(
    padding: const EdgeInsets.only(top: 16, bottom: 40),
    child: const Text(
      'Lorem impus is simply dummy text of the printing and typesseting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since 1500s',
      style: TextStyle(
        fontFamily: 'casual',
        fontSize: 14,
      ),
    ),
  );
}

Widget buttonGroup() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.indigo,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 100),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.add_shopping_cart,
            color: Colors.white,
          ),
          Text(
            '   ADD TO CART',
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    ),
  );
}
