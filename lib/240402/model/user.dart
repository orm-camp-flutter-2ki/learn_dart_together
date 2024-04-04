import 'book.dart';

class User {
  final int id;
  final String name;
  final String signupDate;
  final String address;
  final String phoneNumber;
  final String birth;
  final List<int> bookIds;
  final bool isDelayed;
  final bool isReturned;

//<editor-fold desc="Data Methods">
  const User({
    required this.id,
    required this.name,
    required this.signupDate,
    required this.address,
    required this.phoneNumber,
    required this.birth,
    required this.bookIds,
    required this.isDelayed,
    required this.isReturned,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          signupDate == other.signupDate &&
          address == other.address &&
          phoneNumber == other.phoneNumber &&
          birth == other.birth &&
          bookIds == other.bookIds &&
          isDelayed == other.isDelayed &&
          isReturned == other.isReturned);

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      signupDate.hashCode ^
      address.hashCode ^
      phoneNumber.hashCode ^
      birth.hashCode ^
      bookIds.hashCode ^
      isDelayed.hashCode ^
      isReturned.hashCode;

  @override
  String toString() {
    return 'User{ id: $id, name: $name, signupDate: $signupDate, address: $address, phoneNumber: $phoneNumber, birth: $birth, bookIds: $bookIds, isDelayed: $isDelayed, isReturned: $isReturned,}';
  }

  User copyWith({
    int? id,
    String? name,
    String? signupDate,
    String? address,
    String? phoneNumber,
    String? birth,
    List<int>? bookIds,
    bool? isDelayed,
    bool? isReturned,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      signupDate: signupDate ?? this.signupDate,
      address: address ?? this.address,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      birth: birth ?? this.birth,
      bookIds: bookIds ?? this.bookIds,
      isDelayed: isDelayed ?? this.isDelayed,
      isReturned: isReturned ?? this.isReturned,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'signupDate': signupDate,
      'address': address,
      'phoneNumber': phoneNumber,
      'birth': birth,
      'bookIds': bookIds,
      'isDelayed': isDelayed,
      'isReturned': isReturned,
    };
  }

  factory User.fromJson(Map<String, dynamic> map) {
    return User(
      id: map['id'] as int,
      name: map['name'] as String,
      signupDate: map['signupDate'] as String,
      address: map['address'] as String,
      phoneNumber: map['phoneNumber'] as String,
      birth: map['birth'] as String,
      /// bookIds: (json['bookIds'] as List<dynamic>).cast<int>()
      bookIds:  List<int>.from(map['bookIds']),
      isDelayed: map['isDelayed'] as bool,
      isReturned: map['isReturned'] as bool,
    );
  }

//</editor-fold>
}
