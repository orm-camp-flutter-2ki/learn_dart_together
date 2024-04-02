// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  final int userId;
  final int userName;
  final String address;
  final String phoneNumber;
  final int birth;

  DateTime joinDate;
  User({
    required this.userId,
    required this.userName,
    required this.address,
    required this.phoneNumber,
    required this.birth,
    required this.joinDate,
  });
}
