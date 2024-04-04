// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      address: json['address'] as String,
      birth: DateTime.parse(json['birth'] as String),
      isMember: json['isMember'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      loanBooks: (json['loanBooks'] as List<dynamic>)
          .map((e) => Book.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'birth': instance.birth.toIso8601String(),
      'isMember': instance.isMember,
      'createdAt': instance.createdAt.toIso8601String(),
      'loanBooks': instance.loanBooks,
    };
