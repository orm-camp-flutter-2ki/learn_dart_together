import 'package:learn_dart_together/240401/model/photo.dart';
import 'package:learn_dart_together/240401/repository/photo_repository.dart';
import 'package:learn_dart_together/240401/repository/photo_repository_impl.dart';
import 'package:learn_dart_together/240401/result/result.dart';
import 'package:test/expect.dart';
import 'package:test/test.dart';

PhotoRepository movieRepository = PhotoRepositoryImpl();

void main() {
  test('practice2', () async {
    final photoList = await movieRepository.getPhotos('국화');

    switch (photoList) {
      case Success<List<Photo>>():
        expect(photoList.data[0].tags.contains('flower'), true);
      case Error<List<Photo>>():
        print(photoList.e);
    }
    final result = await movieRepository.getPhotos('바보');

    switch (result) {
      case Success<List<Photo>>():
        expect(result.data[0].tags.contains('flower'), true);
      case Error<List<Photo>>():
        expect(result.e == '비속어를 사용할 수 없습니다', true);
    }
  });
}
