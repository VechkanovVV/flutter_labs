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
        primarySwatch: Colors.grey,
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
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.expand_more,
                  size: 30,
                  color: Colors.black,
                ),
              ),
              const Column(
                children: [
                  Text('PLAYING FROM ARTIST'),
                  Text('Oleg Gazmanov'),
                ],
              ),
              const Icon(
                Icons.more_vert,
              ),
            ],
          ),
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
    color: Colors.grey,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        imageGroup(),
        titleGroup(),
        linearProgressIndicator(),
        menuGroup(),
        buttonGroup(),
      ],
    ),
  );
}

/// Image URL
/// https://newevolutiondesigns.com/images/freebies/yellow-wallpaper-12.jpg
Widget imageGroup() {
  return Center(
    child: Image.asset(
      'assets/1.png',
      fit: BoxFit.cover,
    ),
  );
}

Widget titleGroup() {
  return Container(
      padding: const EdgeInsets.only(top: 30, bottom: 8),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Yesaul',
                style: TextStyle(
                  fontSize: 52,
                  fontFamily: 'cursive',
                ),
              ),
              Text(
                'Oleg Gazmanov',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                ),
              )
            ],
          ),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.favorite,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ));
}

Widget linearProgressIndicator() {
  return Container(
    padding: const EdgeInsets.all(10),
    child: const Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        LinearProgressIndicator(
          color: Colors.black,
          value: 23,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('0:20'),
            Text('3:00'),
          ],
        )
      ],
    ),
  );
}

/// here is the text to copy
///Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
Widget menuGroup() {
  bool pressFirstButton = false;
  return Container(
    padding: const EdgeInsets.only(top: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            if (!pressFirstButton) {
              pressFirstButton = true;
              print(2);
            } else {
              pressFirstButton = false;
              print(1);
            }
          },
          icon: Icon(
            Icons.shuffle,
            color: (!pressFirstButton) ? Colors.black : Colors.white,
            size: 40,
          ),
        ),
        FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.skip_previous,
            size: 40,
          ),
        ),
        FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.play_arrow,
            size: 40,
          ),
        ),
        FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.skip_next,
            size: 40,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Icon(
            Icons.sync,
            color: Colors.black,
            size: 30,
          ),
        ),
      ],
    ),
  );
}

Widget buttonGroup() {
  return Container(
    padding: EdgeInsets.only(top: 90),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.computer,
            size: 30,
          ),
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.queue_music,
                size: 30,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
