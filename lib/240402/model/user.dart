// ignore_for_file: public_member_api_docs, sort_constructors_first
String _getFormattedDate(DateTime date) {
  return '${date.year}/${date.month}/${date.day}';
}

class User {
  final int userId;
  final String userName;
  final String address;
  final String phoneNumber;
  final String birth;
  // field는 String?, 받는 값은 DateTime
  final String? joinDate;
  User({
    required this.userId,
    required this.userName,
    required this.address,
    required this.phoneNumber,
    required DateTime? birth,
    DateTime? joinDate,
  })  : birth = birth != null ? _getFormattedDate(birth) : _getFormattedDate(DateTime.now()),
        joinDate = joinDate != null ? _getFormattedDate(joinDate) : _getFormattedDate(DateTime.now());

  num get age {
    return DateTime.now().year - int.parse(birth);
  }

  @override
  String toString() {
    return 'User(userId: $userId, userName: $userName, address: $address, phoneNumber: $phoneNumber, birth: $birth, joinDate: $joinDate)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.userId == userId && other.userName == userName && other.address == address && other.phoneNumber == phoneNumber && other.birth == birth && other.joinDate == joinDate;
  }

  @override
  int get hashCode {
    return userId.hashCode ^ userName.hashCode ^ address.hashCode ^ phoneNumber.hashCode ^ birth.hashCode ^ joinDate.hashCode;
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'userId': userId,
      'userName': userName,
      'address': address,
      'phoneNumber': phoneNumber,
      'birth': birth,
      'joinDate': joinDate,
    };
  }

  factory User.fromJson(Map<String, dynamic> map) {
    return User(
      userId: map['userId'] as int,
      userName: map['userName'] as String,
      address: map['address'] as String,
      phoneNumber: map['phoneNumber'] as String,
      birth: (map['birth']),
      joinDate: map['joinDate'],
    );
  }

  User copyWith({
    int? userId,
    String? userName,
    String? address,
    String? phoneNumber,
    DateTime? birth,
    DateTime? joinDate,
  }) {
    return User(
      userId: userId ?? this.userId,
      userName: userName ?? this.userName,
      address: address ?? this.address,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      birth: birth == null ? birth : DateTime(int.parse(this.birth)),
      joinDate: joinDate == null ? joinDate : DateTime(int.parse(this.joinDate!)),
    );
  }
}
