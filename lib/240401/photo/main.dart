import './model/photo.dart';
import './data_source/photo_data_source.dart';
import './repository/photo_repository_impl.dart';
import 'result.dart';

void main() async {
  final PhotoDataSource photoDataSource = PhotoDataSource();
  final PhotoRepositoryImpl photoRepository =
  PhotoRepositoryImpl(photoDataSource);

  final String queryInput = '바보';

  final Result<List<Photo>> result =
  await photoRepository.getPhotos(queryInput);

  switch (result) {
    case Success<List<Photo>>():
      final photos = result.data;
      for (final photo in photos) {
        print('Image URL: ${photo.imageUrl}');
        print('Tags: ${photo.tags}');
      }

    case ArgumentError<List<Photo>>():
      print('비속어를 사용할 수 없습니다.');

    case NetworkError<List<Photo>>():
      print('알 수 없는 네트워크 에러');
  }
}