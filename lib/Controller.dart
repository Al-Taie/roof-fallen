import 'package:college/home_page.dart';
import 'package:get/get.dart';

import 'account_created_page.dart';

class Controller extends GetxController {
  RxList<Student> students = <Student>[].obs;
  RxString firstname = ''.obs;
  RxString lastname = ''.obs;
  RxString email = ''.obs;
  RxString birthday = ''.obs;
  RxString username = ''.obs;
  RxString password = ''.obs;

  String? get firstnameError => validate(firstname);
  String? get lastnameError => validate(lastname);
  String? get emailError => validate(email);
  String? get birthdayError => validate(birthday);
  String? get usernameError => validate(username);
  String? get passwordError => validate(password);

  String? validate(RxString rxValue) =>
      rxValue.value.isEmpty ? 'The field cannot be empty' : null;

  Rx<User> user =
      User(username: 'test', password: '111', email: 'test@test.co').obs;

  void addStudent() {
    if (firstname.value.isEmpty ||
        lastname.value.isEmpty ||
        email.value.isEmpty ||
        birthday.value.isEmpty) {
      Get.snackbar("Error", "Please fill in all fields");
      return;
    }
    students.add(Student(
      firstname: firstname.value,
      lastname: lastname.value,
      email: email.value,
      birthday: birthday.value,
    ));
    Get.offAll(const HomePage());
  }

  void delete(int index) {
    students.removeAt(index);
    update();
  }

  void signUp() {
    if (username.value.isEmpty ||
        password.value.isEmpty ||
        email.value.isEmpty) {
      Get.snackbar("Error", "Please fill in all fields");
      return;
    }
    user.value = User(
      username: username.value,
      password: password.value,
      email: email.value,
    );
    Get.offAll(const AccountCreatedPage());
  }

  void login() {
    if (username.value.isEmpty || password.value.isEmpty) {
      Get.snackbar("Error", "Please fill in all fields");
      return;
    }

    if (![user.value.username, user.value.email].contains(username.value) ||
        user.value.password != password.value) {
      Get.snackbar("Error", "Wrong username or password");
      return;
    }

    Get.offAll(const HomePage());
  }
}

class Student {
  String firstname;
  String lastname;
  String email;
  String birthday;
  String name;

  Student(
      {required this.firstname,
      required this.lastname,
      required this.email,
      required this.birthday})
      : name = "$firstname $lastname";
}

class User {
  String username;
  String password;
  String email;

  User({this.username = "", this.password = "", this.email = ""});
}
