// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      name: json['name'] as String,
      id: json['id'] as num,
      phoneNum: json['phoneNum'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
      joinDate: DateTime.parse(json['joinDate'] as String),
      address: json['address'] as String,
      rentList: (json['rentList'] as List<dynamic>)
          .map((e) => Book.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'phoneNum': instance.phoneNum,
      'birthDate': instance.birthDate.toIso8601String(),
      'joinDate': instance.joinDate.toIso8601String(),
      'address': instance.address,
      'rentList': instance.rentList,
    };
