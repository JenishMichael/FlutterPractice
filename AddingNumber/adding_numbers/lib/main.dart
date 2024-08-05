import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var num1 = TextEditingController();
  var num2 = TextEditingController();
  double addD = 0;
  bool isResultVisible = false;

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Input"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: num1,
                autofocus: false,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  label: const Text("First Number"),
                  hintText: "Enter a Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(width: 3.0),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    borderSide: BorderSide(color: Colors.amber),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: num2,
                autofocus: false,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  label: const Text("Second Number"),
                  hintText: "Enter a Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(width: 3.0),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    borderSide: BorderSide(color: Colors.amber),
                  ),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  double num1D = double.parse(num1.text);
                  double num2D = double.parse(num2.text);
                  isResultVisible = true;

                  setState(() {
                    addD = num1D + num2D;
                  });
                },
                child: const Text("Add")),
            const SizedBox(
              height: 20,
            ),
            if (isResultVisible) Text("Result is: $addD"),
            //If curly braces add error comes
          ],
        ),
      ),
    );
  }
}
