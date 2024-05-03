import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Controller.dart';

class RegisterStudentPage extends StatefulWidget {
  const RegisterStudentPage({super.key});

  @override
  State<RegisterStudentPage> createState() => _RegisterStudentPageState();
}

class _RegisterStudentPageState extends State<RegisterStudentPage> {
  Controller controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 100.0,
          ),
          children: [
            Image.asset(
              "assets/images/illustration.png",
              width: 220,
              height: 220,
            ),
            const SizedBox(height: 20.0),
            TextField(
              onChanged: (value) {
                controller.firstname.value = value;
              },
              decoration: InputDecoration(
                hintText: 'firstname',
                errorText: controller.firstnameError,
                border: const OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8.0),
            TextField(
              onChanged: (value) {
                controller.lastname.value = value;
              },
              decoration: InputDecoration(
                hintText: 'lastname',
                errorText: controller.lastnameError,
                border: const OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8.0),
            TextField(
              onChanged: (value) {
                controller.email.value = value;
              },
              decoration: InputDecoration(
                hintText: 'email',
                errorText: controller.emailError,
                border: const OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8.0),
            TextField(
              onChanged: (value) {
                controller.birthday.value = value;
              },
              decoration: InputDecoration(
                hintText: 'birthday',
                errorText: controller.birthdayError,
                border: const OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: controller.addStudent,
                    child: const Text(
                      'Save',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      }),
    );
  }
}
