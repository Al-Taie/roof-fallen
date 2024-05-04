import 'package:flutter/cupertino.dart';

class ProviderModel extends ChangeNotifier {
  List<StudentModel> students = <StudentModel>[];
  String firstname = '';
  String lastname = '';
  String email = '';
  String birthday = '';
  String username = '';
  String password = '';
  String registerPassword = '';
  String registerUsername = '';
  String registerEmail = '';

  ProviderModel._();

  static final ProviderModel _instance = ProviderModel._();

  static ProviderModel get instance => _instance;

  void createStudent(BuildContext context) {
    if (firstname.isNotEmpty &&
        lastname.isNotEmpty &&
        email.isNotEmpty &&
        birthday.isNotEmpty) {
      students.add(StudentModel(
        firstname: firstname,
        lastname: lastname,
        email: email,
        birthday: birthday,
      ));

      Navigator.of(context).pushReplacementNamed("/home");
    }
  }

  void removeStudent(StudentModel student) {
    students.remove(student);
    notifyListeners();
  }

  void signUp(BuildContext context) {
    if (registerUsername.isNotEmpty &&
        registerEmail.isNotEmpty &&
        registerPassword.isNotEmpty) {
      Navigator.of(context).pushReplacementNamed("/created_account");
    }
  }

  void login(BuildContext context) {
    if (username.isNotEmpty &&
        password.isNotEmpty &&
        registerUsername == username &&
        registerPassword == password) {
      Navigator.of(context).pushReplacementNamed("/home");
    }
  }
}

class StudentModel {
  String firstname;
  String lastname;
  String email;
  String birthday;

  StudentModel(
      {required this.firstname,
      required this.lastname,
      required this.email,
      required this.birthday});
}
