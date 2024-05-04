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
