// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookImpl _$$BookImplFromJson(Map<String, dynamic> json) => _$BookImpl(
      name: json['name'] as String,
      author: json['author'] as String,
      releaseDate: DateTime.parse(json['releaseDate'] as String),
      isRented: json['isRented'] as bool,
    );

Map<String, dynamic> _$$BookImplToJson(_$BookImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'author': instance.author,
      'releaseDate': instance.releaseDate.toIso8601String(),
      'isRented': instance.isRented,
    };
