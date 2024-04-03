import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String name,
    required String address,
    required String phone,
    required String signUpDate,
    required String birth
  }) = _User;
}