import 'package:learn_dart_together/240401/model/hits.dart';
import 'package:learn_dart_together/240401/repository/photo_repository_impl.dart';
import 'package:learn_dart_together/240401/result.dart';
import 'package:test/test.dart';

void main() {
  group('Photo', () {
    test('flower test', () async {
      //Given

      //When
      final photos = await PhotoRepositoryImpl().getPhotos('flower');
      final test;
      switch (photos) {
        case Success<List<Hits>>():
          test = photos.data[0];
        case Error<List<Hits>>():
          test = photos.e;
      }

      //Then
      expect(test.tags.contains('flower'), true);
    });
    test('비속어 test', () async {
      //Given
      Hits result = Hits(
          tags: 'blossoms, flower bowl, wood',
          imageURL:
              'https://cdn.pixabay.com/photo/2015/05/13/16/54/flowers-765757_150.jpg');

      //When
      final photos = await PhotoRepositoryImpl().getPhotos('바보');
      var test;
      switch (photos) {
        case Success<List<Hits>>():
          test = photos.data[0];
        case Error<List<Hits>>():
          test = photos.e;
      }

      //Then
      expect(test, '비속어를 사용할 수 없습니다.');
    });
  });
}
