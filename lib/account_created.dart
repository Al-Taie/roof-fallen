import 'package:flutter/material.dart';

class CreatedAccount extends StatefulWidget {
  const CreatedAccount({super.key});

  @override
  State<CreatedAccount> createState() => _CreatedAccountState();
}

class _CreatedAccountState extends State<CreatedAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Account created successfully'),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed("/login");
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
