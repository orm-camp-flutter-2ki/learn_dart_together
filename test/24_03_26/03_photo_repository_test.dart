import 'package:learn_dart_together/24_03_26/repository/03_photo_repository_Impl.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() async {
  test('과제 3. Repository 작성 연습 getPhotos()', () async {
    //given
    final repository = PhotoRepositoryImpl();
    final photos = await repository.getPhotos(10);

    //when
    final photoId = photos.id;

    //then
    expect(photoId == 10, true);
  });
}