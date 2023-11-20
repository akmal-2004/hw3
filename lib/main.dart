import 'package:flutter/material.dart';
import 'package:untitled/counter.dart';
import 'package:untitled/home.dart';
import 'package:untitled/login.dart';
import 'package:untitled/profile.dart';
import 'package:untitled/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HW3',
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/login': (context) => const LoginScreen(),
        '/profile': (context) => const Profile(),
        '/counter': (context) => const Counter(),
        '/donotpress': (context) => const DoNotPress()
      },
    );
  }
}