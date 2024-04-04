import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/book.dart';

part 'library.freezed.dart';
part 'library.g.dart';

@freezed
class Library with _$Library {
  const factory Library({
    required int bookQuantity,
    required List<Book> books,
  }) = _Library;

  factory Library.fromJson(Map<String, Object?> json) =>
      _$LibraryFromJson(json);
}
