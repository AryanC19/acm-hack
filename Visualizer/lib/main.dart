import 'package:flutter/material.dart';
import 'package:visualizer/screens/detail.dart';
import 'screens/home_screen.dart';
import 'package:visualizer/screens/login%20page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const LoginPage(),
          '/homeBuyer': (context) => const HomePage(),
          '/detail': (context) => const DetailScreen(),
          '/login': (context) => const LoginPage(),
        });
  }
}
