import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'loan_record.freezed.dart';
part 'loan_record.g.dart';

@freezed
class LoanRecord with _$LoanRecord {
  const factory LoanRecord({
    required String id,
    required String userId,
    required String bookId,
    required String loanDate,
    required String extendedReturnDate,
    required String returnDate,
    required bool isExtended,
    required bool isReturned,
  }) = _LoanRecord;

  factory LoanRecord.fromJson(Map<String, Object?> json) =>
      _$LoanRecordFromJson(json);
}
