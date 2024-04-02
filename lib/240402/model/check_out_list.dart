// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:learn_dart_together/240402/model/book.dart';
import 'package:learn_dart_together/240402/model/user.dart';

class CheckOutList {
  User user;
  Book book;
  int period;
  bool isCheckOuted;

  CheckOutList({
    required this.user,
    required this.book,
    required this.period,
    required this.isCheckOuted,
  });
}
