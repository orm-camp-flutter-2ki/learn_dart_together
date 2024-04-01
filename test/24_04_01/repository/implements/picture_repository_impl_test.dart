import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_25/utility/network_error.dart';
import 'package:learn_dart_together/24_04_01/data_source/picture_api.dart';
import 'package:learn_dart_together/24_04_01/dto/picture_dto.dart';
import 'package:learn_dart_together/24_04_01/model/picture.dart';
import 'package:learn_dart_together/24_04_01/repository/implements/picture_repository_impl.dart';
import 'package:learn_dart_together/24_04_01/repository/interface/picture_repository.dart';
import 'package:learn_dart_together/24_04_01/result/result.dart';
import 'package:test/test.dart';

void main() {
  group('picture repository test', () {
    test('getPictures 메서드 테스트 - 바보를 입력하면 에러발생', () async {
      PictureRepository repo = PictureRepositoryImpl(PictureApi());
      final result = await repo.getPictures('바보');

      final expectValue = '비속어를 사용할 수 없습니다.';

      switch (result) {
        case Success<List<Picture>, NetworkingError>():
          print(result.data);
        case Error<List<Picture>, NetworkingError>():
          expect(result.networkError.message == expectValue, true);
      }
    });

    test('getPictures 메서드 테스트 - 400 에러 테스트', () async {
      final badUri =
          'https://pixabay.com/api/?key=43170-66dd05200f7c3fa131b59ca03&q=강아지&image_type=photo';
      PictureRepository repo = PictureRepositoryImpl(MockPictureApi());

      final result = await repo.getPictures(badUri);

      switch (result) {
        case Success<List<Picture>, NetworkingError>():
          print(result.data);
        case Error<List<Picture>, NetworkingError>():
          expect(result.networkError == NetworkingError.badClientRequest, true);
      }
    });
  });
}

class MockPictureApi implements PictureApi {
  @override
  Future<Result<List<HitsDto>, int>> getPicturesDto(String uri) async {
    final http.Response response = await http.get(Uri.parse(uri));

    if (response.statusCode != 200) {
      return Result.error(response.statusCode);
    }

    final jsonString = jsonDecode(response.body);
    final jsonList = jsonString['hits'] as List;
    final List<HitsDto> data =
        jsonList.map((e) => HitsDto.fromJson(e)).toList();

    return Result.success(data);
  }
}
