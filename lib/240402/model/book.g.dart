// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookImpl _$$BookImplFromJson(Map<String, dynamic> json) => _$BookImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      publishDate: DateTime.parse(json['publishDate'] as String),
      isAbleLoan: json['isAbleLoan'] as bool,
      loanDate: DateTime.parse(json['loanDate'] as String),
      returnDate: DateTime.parse(json['returnDate'] as String),
    );

Map<String, dynamic> _$$BookImplToJson(_$BookImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'publishDate': instance.publishDate.toIso8601String(),
      'isAbleLoan': instance.isAbleLoan,
      'loanDate': instance.loanDate.toIso8601String(),
      'returnDate': instance.returnDate.toIso8601String(),
    };
