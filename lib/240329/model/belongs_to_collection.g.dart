// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'belongs_to_collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BelongsToCollection _$BelongsToCollectionFromJson(Map<String, dynamic> json) =>
    BelongsToCollection(
      id: json['id'] as num,
      name: json['name'] as String,
      posterPath: json['poster_path'] as String,
      backdropPath: json['backdrop_path'] as String,
    );

Map<String, dynamic> _$BelongsToCollectionToJson(
        BelongsToCollection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'posterPath': instance.posterPath,
      'backdropPath': instance.backdropPath,
    };
