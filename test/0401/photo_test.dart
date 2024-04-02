import 'package:http/http.dart';
import 'package:learn_dart_together/0401/common/exception/image_exception.dart';
import 'package:learn_dart_together/0401/common/result.dart';
import 'package:learn_dart_together/0401/data_source/photo_api.dart';
import 'package:learn_dart_together/0401/model/photo.dart';
import 'package:learn_dart_together/0401/repository/photo_repository.dart';
import 'package:learn_dart_together/0401/repository/photo_repository_impl.dart';
import 'package:test/test.dart';

void main() {
  test('Success, Error Handling', () async {
    final String query = '바보';
    PhotoRepository photoRepository = PhotoRepositoryImpl(photoApi: PhotoApi(client: Client()));
    Result<List<Photo>, ImageException> photos = await photoRepository.getPhotos(query);

    switch (photos) {
      case Success<List<Photo>, ImageException>():
        expect(photos.data.first.tags, 'darts, dartboard, game');
        expect(photos.data.first.previewURL, 'https://cdn.pixabay.com/photo/2013/04/12/06/03/darts-102919_150.jpg');
      case Error<List<Photo>, ImageException>():
        photos.error.handleException();
    }
  });
}
