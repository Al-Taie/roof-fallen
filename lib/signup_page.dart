import 'package:college/data/Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  Controller controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: 100.0,
                  height: 100.0,
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'IT College',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40.0),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Obx(() {
                      return Column(
                        children: [
                          const Text(
                            'Signup By Your Account',
                            style: TextStyle(fontSize: 20.0),
                          ),
                          const SizedBox(height: 20.0),
                          TextField(
                            onChanged: (value) {
                              controller.username.value = value;
                            },
                            decoration: InputDecoration(
                              hintText: 'username',
                              errorText: controller.usernameError,
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
                            obscureText: true,
                            onChanged: (value) {
                              controller.password.value = value;
                            },
                            decoration: InputDecoration(
                              hintText: 'password',
                              errorText: controller.passwordError,
                              border: const OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  child: const Text('Signup',
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  onPressed: () {
                                    controller.signUp();
                                  },
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextButton(
                                  child: const Text('Login',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  onPressed: () {
                                    Get.offAll(const LoginPage());
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
