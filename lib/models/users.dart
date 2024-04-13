class User {
  final String firstName;
  final String lastName;
  final String gender;
  final String occupation;

  User(
      {required this.firstName,
      required this.lastName,
      required this.gender,
      required this.occupation});
}

class UserData {
  final String uid;
  final String firstName;
  final String lastName;
  final String gender;
  final String occupation;

  UserData(
      {required this.uid,
      required this.firstName,
      required this.lastName,
      required this.gender,
      required this.occupation});
}
