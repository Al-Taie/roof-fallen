import 'package:college/data/Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'data/Student.dart';

class StudentsPage extends StatelessWidget {
  const StudentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    Controller controller = Get.find();
    RxList<Student> students = controller.students;
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Obx(() {
            return ListView.builder(
              padding: const EdgeInsets.all(12.0),
              itemCount: students.length,
              itemBuilder: (context, index) {
                return cardItem(
                  name: students[index].name,
                  email: students[index].email,
                  date: students[index].birthday,
                  onDelete: () {
                    controller.delete(index);
                  },
                );
              },
            );
          }),
        ),
      ),
    );
  }
}

Widget cardItem({
  required String name,
  required String email,
  required String date,
  required VoidCallback onDelete,
}) {
  return Card(
    elevation: 3.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: onDelete,
                icon: Icon(Icons.delete),
              ),
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(email),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              date,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    ),
  );
}
