import 'package:learn_dart_together/24_03_28/http/http.dart';
import 'package:learn_dart_together/24_04_01/image_search/data_source/image_api_impl.dart';
import 'package:learn_dart_together/24_04_01/image_search/dto/image_dto.dart';
import 'package:learn_dart_together/24_04_01/image_search/mapper/image_mapper.dart';
import 'package:learn_dart_together/24_04_01/image_search/model/image_model.dart';
import 'package:learn_dart_together/24_04_01/image_search/repository/image_repository.dart';
import 'package:learn_dart_together/24_04_01/result.dart';

import '../data_source/image_api.dart';

class ImageRepositoryImpl implements ImageRepository {
  final ImageApi _imageApi;

  ImageRepositoryImpl({required imageApi}) : _imageApi = imageApi;

  @override
  Future<Result<List<ImageModel>>> getPhotos(String q, String imageType) async {
    ImageDto imageDto;
    List<ImageModel> imageModel;
    try {
      if (q == '바보') return Result.error('비속어를 사용할 수 없습니다.');
      imageDto = await _imageApi.getImages(q, imageType);
      imageModel = imageDto.hits!.map((e) => e.toImage()).toList();
      return Result.success(imageModel);
    } catch (e) {
      return Result.error('알 수 없는 네트워크 에러');
    }
  }
}

void main() async {
  final ImageApi imageApi = ImageApiImpl(http: HttpImpl());
  final images = await ImageRepositoryImpl(imageApi: imageApi).getPhotos('yellow+flower', 'photo');
  // final images = await ImageRepositoryImpl(imageApi: imageApi).getPhotos('바보', 'photo');
  print(images);
}
