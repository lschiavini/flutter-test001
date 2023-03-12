class UserModel {
  final String firstName;
  final String lastName;
  final String age;
  final String phone;
  final String gender;

  UserModel({
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.phone,
    required this.gender,
  });

  @override
  String toString() {
    return 'UserModel{firstName: $firstName, lastName: $lastName, age: $age, phone: $phone, gender: $gender}';
  }
}
