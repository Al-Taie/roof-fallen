import 'package:college/login.dart';
import 'package:college/register_student.dart';
import 'package:college/signup.dart';
import 'package:college/students.dart';
import 'package:flutter/material.dart';

import 'account_created.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IT College',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(primary: Colors.brown),
        useMaterial3: false,
      ),
      routes: {
        '/home': (context) => const Home(),
        '/login': (context) => const Login(),
        '/signup': (context) => const Signup(),
        '/students': (context) => const Students(),
        '/created_account': (context) => const CreatedAccount(),
        '/register_student': (context) => const RegisterStudent(),
      },
      home: const Login(),
    );
  }
}
