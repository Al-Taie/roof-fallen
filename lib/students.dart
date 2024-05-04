import 'package:college/provider_model.dart';
import 'package:flutter/material.dart';

class Students extends StatefulWidget {
  const Students({super.key});

  @override
  State<Students> createState() => _Students();
}

class _Students extends State<Students> {
  @override
  Widget build(BuildContext context) {
    ProviderModel model = ProviderModel.instance;
    List<StudentModel> students = model.students;
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ListView.builder(
            padding: const EdgeInsets.all(12.0),
            itemCount: students.length,
            itemBuilder: (context, index) {
              return cardItem(
                name: students[index].firstname,
                email: students[index].email,
                date: students[index].birthday,
                onDelete: () {
                  model.removeStudent(students[index]);
                  setState(() {});
                },
              );
            },
          ),
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
