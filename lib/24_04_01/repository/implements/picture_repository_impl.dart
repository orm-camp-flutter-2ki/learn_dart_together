import 'package:learn_dart_together/24_03_25/utility/network_error.dart';
import 'package:learn_dart_together/24_04_01/data_source/picture_api.dart';
import 'package:learn_dart_together/24_04_01/dto/picture_dto.dart';
import 'package:learn_dart_together/24_04_01/mapper/picture_mapper.dart';
import 'package:learn_dart_together/24_04_01/model/picture.dart';
import 'package:learn_dart_together/24_04_01/repository/interface/picture_repository.dart';
import 'package:learn_dart_together/24_04_01/result/result.dart';

class PictureRepositoryImpl implements PictureRepository {
  final PictureApi _api;

  PictureRepositoryImpl(this._api);

  @override
  Future<Result<List<Picture>, NetworkingError>> getPictures(
      String query) async {
    if (query == '바보') {
      return Result.error(NetworkingError.invalidString);
    }

    final result = await _api.getPicturesDto(query);

    switch (result) {
      case Success<List<HitsDto>, int>() :
        final List<Picture> listPictures = result.data.map((e) => e.toPicture())
            .toList();
        return Result.success(listPictures);
      case Error<List<HitsDto>, int>():
        switch (result.error) {
          case >= 500 :
            return Result.error(NetworkingError.badServerResponse);
          case >= 400 :
            return Result.error(NetworkingError.badClientRequest);
          case >= 300 :
            return Result.error(NetworkingError.unknown);
          default :
            return Result.error(NetworkingError.unknown);
        }
    }
  }
}