import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int imgnumber = 2;
  void rand(){
    imgnumber = Random().nextInt(5)+1;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent.shade700,
          title: Center(child: Text('Ask Me Anything')),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: (){
                setState(() {
                  rand();
                });
              },
              child: Image(
                image: AssetImage('images/ball$imgnumber.png'),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
