// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loanRecord.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoanRecordImpl _$$LoanRecordImplFromJson(Map<String, dynamic> json) =>
    _$LoanRecordImpl(
      bookName: json['bookName'] as String,
      userName: json['userName'] as String,
      rentDate: DateTime.parse(json['rentDate'] as String),
      rentBackDate: DateTime.parse(json['rentBackDate'] as String),
      extendReturnDate: json['extendReturnDate'] as num,
    );

Map<String, dynamic> _$$LoanRecordImplToJson(_$LoanRecordImpl instance) =>
    <String, dynamic>{
      'bookName': instance.bookName,
      'userName': instance.userName,
      'rentDate': instance.rentDate.toIso8601String(),
      'rentBackDate': instance.rentBackDate.toIso8601String(),
      'extendReturnDate': instance.extendReturnDate,
    };
