import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_history.freezed.dart';

@freezed
class BookHistory with _$BookHistory {
  const factory BookHistory({
    required int id,
    required int bookId,
    required int userId,
    required String rentDate,
    required bool isExtend
  }) = _BookHistory;
}