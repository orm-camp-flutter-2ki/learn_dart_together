import 'package:learn_dart_together/24_03_29/dto/belongs_to_collection_dto.dart';
import 'package:learn_dart_together/24_03_29/model/belongs_to_collection.dart';

extension BelongsToCollectionDtoToBelongsToCollection on BelongsToCollectionDto {
  BelongsToCollection toBelongsToCollection() {
    return BelongsToCollection(
      id: id ?? 0,
      name: name ?? 'unknown',
      posterPath: posterPath ?? 'unknown',
      backdropPath: backdropPath ?? 'unknown',
    );
  }
}