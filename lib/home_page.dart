import 'package:college/register_student_page.dart';
import 'package:college/students_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Image(
                  image: AssetImage('assets/images/welcome.png'),
                ),
              ), // Welcome image
              const SizedBox(height: 40.0),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    button(
                      title: 'Student registration',
                      icon: Icons.receipt_outlined,
                      onTap: () {
                        Get.to(const RegisterStudentPage());
                      },
                    ),
                    const SizedBox(width: 20.0),
                    button(
                      title: 'Students',
                      icon: Icons.person,
                      onTap: () {
                        Get.to(const StudentsPage());
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget button({
  required String title,
  required IconData icon,
  required VoidCallback onTap,
}) {
  return Expanded(
    child: InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12.0),
      child: Ink(
        height: 148,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.brown,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 64.0,
              color: Colors.white,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
