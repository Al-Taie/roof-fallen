import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_page.dart';

class AccountCreatedPage extends StatefulWidget {
  const AccountCreatedPage({super.key});

  @override
  State<AccountCreatedPage> createState() => _AccountCreatedPageState();
}

class _AccountCreatedPageState extends State<AccountCreatedPage> {
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
                  Get.offAll(() => const LoginPage());
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
