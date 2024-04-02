import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';

@freezed
class Book with _$Book {
  const factory Book({
    required int id,
    required String title,
    required String author,
    required bool isAble,
    required String publishDate
  }) = _Book;
}