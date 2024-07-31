import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

var counter = 0;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Counter App",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Sevillana-Regular",
            fontSize: 25,
            letterSpacing: 1.5,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Text(
          "$counter times you pressed the floating Button",
          style: const TextStyle(
              fontFamily: "Sevillana-Regular",
              wordSpacing: 2,
              letterSpacing: 2,
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: Colors.deepPurple),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        backgroundColor: Colors.yellow,
        child: const Icon(
          Icons.add,
          size: 28,
          color: Colors.deepPurple,
        ),
      ),
    );
  }
}
