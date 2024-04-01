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

      String error = '';
      final expected = '알 수 없는 네트워크 에러';

      // When
      final result = await repository.getPhotos(apiKey, query);
      switch (result) {
        case Success<List<Photo>, NetworkError>():
          print(result.data);
        case Error<List<Photo>, NetworkError>():
          switch (result.error) {
            case NetworkError.httpError:
              error = 'HTTP Error';
            case NetworkError.requestTimeout:
              error = '타임 아웃';
            case NetworkError.unknown:
              error = '알 수 없는 네트워크 에러';
            case NetworkError.babo:
              error = '비속어를 사용할 수 없습니다.';
          }
      }

      // Then
      expect(error, expected);
    });

    test("‘바보' 로 검색하면 '비속어를 사용할 수 없습니다.' 메시지를 리턴", () async {
      // Given
      apiKey = '43171022-dca0290df38de24cd7ba6ed14';
      query = '바보';

      String error = '';
      final expected = '비속어를 사용할 수 없습니다.';

      // When
      final result = await repository.getPhotos(apiKey, query);
      switch (result) {
        case Success<List<Photo>, NetworkError>():
          print(result.data);
        case Error<List<Photo>, NetworkError>():
          switch (result.error) {
            case NetworkError.httpError:
              error = 'HTTP Error';
            case NetworkError.requestTimeout:
              error = '타임 아웃';
            case NetworkError.unknown:
              error = '알 수 없는 네트워크 에러';
            case NetworkError.babo:
              error = '비속어를 사용할 수 없습니다.';
          }
      }

      // Then
      expect(error, expected);
    });
  });
}
