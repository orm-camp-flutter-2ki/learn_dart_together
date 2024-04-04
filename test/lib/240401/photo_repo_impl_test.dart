import 'package:learn_dart_together/240401/data_source/photo_api.dart';
import 'package:learn_dart_together/240401/model/photo.dart';
import 'package:learn_dart_together/240401/repository/photo_repo_impl.dart';
import 'package:learn_dart_together/240401/repository/photo_repository.dart';
import 'package:learn_dart_together/result_ver_2.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('(필수) 과제 2. 이미지 검색 기능 작성', () {
    final PhotoRepository repository =
        PhotoRepositoryImpl(photoApi: PhotoApi());

    String query;
    String apiKey;

    test("try - catch 로 에러 검출시 '알 수 없는 네트워크 에러' 메시지를 리턴", () async {
      // Given
      apiKey = '43171022-dca0290df38de24cd';
      query = 'flowers+cat+home&image_type=photo';

      final expected = '알 수 없는 네트워크 에러';

      // When
      final data = await repository.getPhotos(apiKey, query);
      final result = switchCase(data);

      // Then
      expect(result, expected);
    });

    test("‘바보' 로 검색하면 '비속어를 사용할 수 없습니다.' 메시지를 리턴", () async {
      // Given
      apiKey = '43171022-dca0290df38de24cd7ba6ed14';
      query = '바보';

      final expected = '비속어를 사용할 수 없습니다.';

      // When
      final data = await repository.getPhotos(apiKey, query);
      final result = switchCase(data);

      // Then
      expect(result, expected);
    });
  });
}

String switchCase(ResultVer2<List<Photo>, NetworkError> setData) {
  String result = '';

  switch (setData) {
    case Success<List<Photo>, NetworkError>():
      print(setData.data);
    case Error<List<Photo>, NetworkError>():
      switch (setData.error) {
        case NetworkError.httpError:
          result = 'HTTP Error';
        case NetworkError.requestTimeout:
          result = '타임 아웃';
        case NetworkError.unknown:
          result = '알 수 없는 네트워크 에러';
        case NetworkError.babo:
          result = '비속어를 사용할 수 없습니다.';
      }
  }

  return result;
}
