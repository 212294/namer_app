import 'package:flutter/material.dart';
import 'package:world_time2/pages/choose_location.dart';
import 'package:world_time2/pages/home.dart';
import 'package:world_time2/pages/loading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: const Home(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => const Loading(),
        '/home': (ctx) => const Home(),
        '/location': (ctx) => const ChooseLocation(),
      },
    );
  }
}