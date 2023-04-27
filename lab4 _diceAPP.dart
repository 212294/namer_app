import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dice App",
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int diceNumber = 1;
  int diceNumber2 = 2;

  changeDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
      diceNumber2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dice Roller"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image:AssetImage("assets/BG.jpeg"),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Image
             Center(
                child: Image.asset(
              "assets/diceeLogo@2x.png",
              height: 150,
              width: 150,
            )),
            Center(
                child: Image.asset(
              "assets/$diceNumber.png",
              height: 150,
              width: 150,
            )),
            Center(
                child: Image.asset(
              "assets/$diceNumber2.png",
              height: 150,
              width: 150,
            )),
            // Button
            MaterialButton(
              color: Colors.blue,
              onPressed: changeDice,
              child: const Text(
                "Roll",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 70),
            // Text
            const Text("ROCK&ROLL",
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
            // Container(
            //   constraints: const BoxConstraints.expand(),
            //   decoration: const BoxDecoration(
            //     image: DecorationImage(
            //         image: AssetImage("assets/Background.jpeg"),
            //         fit: BoxFit.cover),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
