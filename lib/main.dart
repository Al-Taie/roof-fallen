import 'package:college/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'data/Controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(Controller());
    return GetMaterialApp(
      title: 'IT College',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(primary: Colors.brown),
        useMaterial3: false,
      ),
      home: const LoginPage(),
    );
  }
}
