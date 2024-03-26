import 'package:learn_dart_together/orm_240326/00_data_repository/photos_repository.dart';
import 'package:learn_dart_together/orm_240326/00_data_repository/photos_repository_impl.dart';
import 'package:test/test.dart';

void main() {
  test('photos albumId test', () async {
    final PhotosRepository photoTest = PhotosRepositoryImpl();
    final results = await photoTest.getPhotos(1);
    // print(results);
    expect(results.length, 50);
  });
}
