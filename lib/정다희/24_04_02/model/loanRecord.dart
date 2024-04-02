import 'package:freezed_annotation/freezed_annotation.dart';

part 'loanRecord.freezed.dart';

part 'loanRecord.g.dart';

@freezed
class LoanRecord with _$LoanRecord {
  const factory LoanRecord(
      {required String bookName,
      required String userName,
      required DateTime rentDate,
      required DateTime rentBackDate,
      required num extendReturnDate}) = _LoanRecord;

  factory LoanRecord.fromJson(Map<String, Object?> json) =>
      _$LoanRecordFromJson(json);
}
