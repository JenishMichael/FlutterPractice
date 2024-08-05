import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: IdCard()));
}

class IdCard extends StatelessWidget {
  const IdCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        title:  Text(
          "ID Card",
          style: TextStyle(
              color: Colors.blueGrey[50], fontWeight: FontWeight.bold, fontSize: 25
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
      ),
      body:  Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("assets/face3.jpg"),
              radius: 90,
            ),
            const Divider(
              height: 50,
              color: Colors.blueGrey,
            ),
            Row(
              children: [
                 Text("Name:",
                    style: TextStyle(
                        color: Colors.blueGrey[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        letterSpacing: 1)),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Jenish",
                  style: TextStyle(
                    color: Colors.blueGrey[900],
                    fontSize: 20,
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "Designation: ",
                  style: TextStyle(
                    color: Colors.blueGrey[900],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Software Developer",
                  style: TextStyle(
                    color: Colors.blueGrey[900],
                    fontSize: 20,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.bloodtype,
                  color: Colors.blueGrey[900],
                  size: 25,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "O+",
                  style: TextStyle(
                    color: Colors.blueGrey[900],
                    fontSize: 20,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.email,
                  size: 25,
                  color: Colors.blueGrey[900],
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "jenish@gmail.com",
                  style: TextStyle(
                    color: Colors.blueGrey[900],
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ],
        ),
      ),


    );
  }
}
