import 'package:freezed_annotation/freezed_annotation.dart';

import 'book.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class User with _$User {
  const factory User(
      {required String name,
      required num id,
      required String phoneNum,
      required DateTime birthDate,
      required DateTime joinDate,
      required String address,
      required List<Book> rentList}) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
