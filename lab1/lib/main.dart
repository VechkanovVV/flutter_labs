import 'package:flutter/material.dart';

void main() => runApp(Lab1());

/// this is your APP Main screen configuration
class Lab1 extends StatelessWidget {
  Lab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LAb1HomePage(),
    );
  }
}

/// this is a template to start building a UI
/// to start adding any UI you want change what comes after the [ body: ] tag below
class LAb1HomePage extends StatelessWidget {
  LAb1HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f4f4),
      /*******************--[focus here 🧐]--*******************/
      appBar: AppBar(
        leading: const Icon(Icons.stars),
        title: const Text('Lab 1'),
        backgroundColor: Colors.teal,
        elevation: 4,
      ),
      body: myWidget(),
      /*******************--[focus here 🧐]--*******************/
    );
  }

  Widget myWidget() {
    return SingleChildScrollView(
      child: Column(
        children: [
          /*******************--[focus here 🧐]--*******************/
          SizedBox(
            height: 25,
          ),
          exercise1(),
          SizedBox(
            height: 25,
          ),
          exercise2(),
          SizedBox(
            height: 25,
          ),
          exercise3(),
          SizedBox(
            height: 25,
          ),
          exercise4(),
          SizedBox(
            height: 25,
          ),
          exercise5(),
          SizedBox(
            height: 25,
          ),
          exercise6(),
          /*******************--[focus here 🧐]--*******************/
        ],
      ),
    );
  }

  /// TODO: Implement Exercises below as per the handed Document
  Widget exercise1() {
    return Text(
      "Welcom to lab1",
      style: TextStyle(
        fontFamily: 'monospace',
        color: Colors.lightGreenAccent,
        backgroundColor: Colors.grey,
        fontSize: 40,
      ),
    );
  }

  Widget exercise2() {
    return Icon(
      Icons.share,
      color: Colors.blue,
      size: 90,
    );
  }

  /// TODO : print on the screen on Pressed when clicking on the button, and print on Long Pressed when long click to Button
  Widget exercise3() {
    return Container(
      width: 250,
      height: 50,
      child: ElevatedButton(
        onLongPress: () {
          print('long click');
        },
        onPressed: () {
          print('short click');
        },
        child: Text(
          'Click here',
          style: TextStyle(color: Colors.yellow, fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }

  Widget exercise4() {
    return Container(
      width: 60,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          backgroundColor: Colors.black,
        ),
        onPressed: () {},
        child: Icon(
          Icons.favorite,
          color: Colors.greenAccent,
        ),
      ),
    );
  }

  Widget exercise5() {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.yellow,
          width: 4,
        ),
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Button to press',
          style: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
    );
  }

  Widget exercise6() {
    return Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border(
            top: BorderSide(
              color: Colors.blue,
              width: 8,
            ),
            left: BorderSide(
              color: Colors.indigoAccent,
              width: 8,
            ),
            bottom: BorderSide(
              color: Colors.red,
              width: 8,
            ),
            right: BorderSide(
              color: Colors.purple,
              width: 8,
            ),
          ),
        ),
        child: Center(
          child: Icon(
            Icons.warning,
            size: 40,
          ),
        ));
  }
}
