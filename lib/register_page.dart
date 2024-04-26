import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
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
          const TextField(
            decoration: InputDecoration(
              hintText: 'firstname',
              errorText: 'The field cannot be empty',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 8.0),
          const TextField(
            decoration: InputDecoration(
              hintText: 'lastname',
              errorText: 'The field cannot be empty',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 8.0),
          const TextField(
            decoration: InputDecoration(
              hintText: 'email',
              errorText: 'The field cannot be empty',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 8.0),
          const TextField(
            decoration: InputDecoration(
              hintText: 'birthday',
              errorText: 'The field cannot be empty',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 8.0),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  child: const Text('Save',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      )),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
