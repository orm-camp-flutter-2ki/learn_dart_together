import 'package:freezed_annotation/freezed_annotation.dart';

import 'book.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String name,
    required String address,
    required DateTime birth,
    required bool isMember,
    required DateTime createdAt,
    required List<Book> loanBooks,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
