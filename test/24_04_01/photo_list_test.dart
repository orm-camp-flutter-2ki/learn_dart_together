import 'package:learn_dart_together/24_03_26/model/photo.dart';
import 'package:learn_dart_together/24_04_01/data_source/results_api.dart';
import 'package:learn_dart_together/24_04_01/repository/results_repo_impl.dart';
import 'package:test/test.dart';

void main() {
  group('about Result Pattern', () {
    test('getPhotos에 정상적인 쿼리가 있을 시 에러가 나지 않는지 테스트', () async {
      final photoList =
          await ResultsRepoImpl(ResultsApi()).getPhotos('yellow flowers');

      expect(photoList.runtimeType.toString() != '_\$ErrorImpl<List<Photo>>',
          true);
    });

    test('-바보-로 검색하면 에러가 나는지 테스트', () async {
      final photoList = await ResultsRepoImpl(ResultsApi()).getPhotos('바보');

      expect(photoList.runtimeType.toString() == '_\$ErrorImpl<List<Photo>>',
          true);
    });

    // test('try - catch 로 에러 검출시 -알 수 없는 네트워크 에러- 메시지를 리턴', () async {
    //   final photoList =
    //       await ResultsRepoImpl(ResultsApi()).getPhotos('yellow flowers');
    // });

    // test('-바보-로 검색하면 -비속어를 사용할 수 없습니다- 메시지를 리턴', () async {
    //   final photoList = await ResultsRepoImpl(ResultsApi()).getPhotos('바보');
    // });
  });
}
