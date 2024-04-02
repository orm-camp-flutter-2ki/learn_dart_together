// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:learn_dart_together/240402/model/book.dart';
import 'package:learn_dart_together/240402/model/user.dart';

class CheckOutList {
  final User user;
  final Book book;
  final DateTime dueReturn;

  CheckOutList({
    required this.user,
    required this.book,
    DateTime? dueReturn,
  }) : dueReturn = dueReturn != null
            ? DateTime(dueReturn.year, dueReturn.month, dueReturn.day)
            : DateTime(
                DateTime.now().year,
                DateTime.now().month,
                DateTime.now().day,
              );

  CheckOutList copyWith({
    User? user,
    Book? book,
    DateTime? dueReturn,
    bool? isCheckOuted,
  }) {
    return CheckOutList(
      user: user ?? this.user,
      book: book ?? this.book,
      dueReturn: dueReturn ?? this.dueReturn,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'user': user.toJson(),
      'book': book.toJson(),
      'dueReturn': dueReturn.millisecondsSinceEpoch,
    };
  }

  factory CheckOutList.fromJson(Map<String, dynamic> map) {
    return CheckOutList(
      user: User.fromJson(map['user'] as Map<String, dynamic>),
      book: Book.fromJson(map['book'] as Map<String, dynamic>),
      dueReturn: DateTime.fromMillisecondsSinceEpoch(map['dueReturn'] as int),
    );
  }
}
