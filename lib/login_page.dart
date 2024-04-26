import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
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
                child: Column(
                  children: [
                    const Text(
                      'Login By Your Account',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    const SizedBox(height: 20.0),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'username',
                        errorText: 'The field cannot be empty',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'password',
                        errorText: 'The field cannot be empty',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            child: const Text('Login',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                )),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            child: const Text('SingUp',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                )),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
