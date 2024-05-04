import 'package:flutter/material.dart';

import 'provider_model.dart';

class RegisterStudent extends StatefulWidget {
  const RegisterStudent({super.key});

  @override
  State<RegisterStudent> createState() => _RegisterStudentState();
}

class _RegisterStudentState extends State<RegisterStudent> {
  ProviderModel model = ProviderModel.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 100.0,
        ),
        children: [
          Image.asset(
            "images/illustration.png",
            width: 220,
            height: 220,
          ),
          const SizedBox(height: 20.0),
          TextField(
            onChanged: (value) {
              model.firstname = value;
            },
            decoration: InputDecoration(
              hintText: 'firstname',
              border: const OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 8.0),
          TextField(
            onChanged: (value) {
              model.lastname = value;
            },
            decoration: InputDecoration(
              hintText: 'lastname',
              border: const OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 8.0),
          TextField(
            onChanged: (value) {
              model.email = value;
            },
            decoration: InputDecoration(
              hintText: 'email',
              border: const OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 8.0),
          TextField(
            onChanged: (value) {
              model.birthday = value;
            },
            decoration: InputDecoration(
              hintText: 'birthday',
              border: const OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 8.0),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () => model.createStudent(context),
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
      ),
    );
  }
}
