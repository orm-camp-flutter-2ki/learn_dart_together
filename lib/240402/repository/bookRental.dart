import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book with _$Book {
  const factory Book(
      {required String name,
      required String author,
      required DateTime releaseDate,
      required bool isRented}) = _Book;

  factory Book.fromJson(Map<String, Object?> json) => _$BookFromJson(json);
}
