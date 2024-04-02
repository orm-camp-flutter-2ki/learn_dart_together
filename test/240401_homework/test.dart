import 'package:learn_dart_together/240401_homework/data_source/pixabay_api.dart';
import 'package:learn_dart_together/240401_homework/model/photo.dart';
import 'package:learn_dart_together/240401_homework/repository/pixabay_repository_impl.dart';
import 'package:learn_dart_together/240401_homework/result.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('바보 테스트', () async {
    final result =
        await PixabayRepositoryImpl(PixabayApi()).getWebFormatImage('바보');

    switch (result) {
      case Success<List<Photo>, NetworkError>():
        print(result.data);
      case Error<List<Photo>, NetworkError>():
        {
          switch (result.error) {
            case NetworkError.slang:
              print('비속어를 사용할 수 없습니다');
            case NetworkError.unknown:
              print('알 수 없는 네트워크 에러');
            case NetworkError.requestTimeout:
              print('타임아웃');
          }
        }
    }
  });
}
