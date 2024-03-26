import 'package:learn_dart_together/24_03_26/data_source/task3_photo_api.dart';
import '../interfaces/task3_photo_repository_interface.dart';
import '../model_class/task3_photo.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _api = PhotoApi();

  @override
  Future<List<Photo>> getPhotos(int albumId) async {
    return _api.getPhotos(albumId);
  }
}

Future<void> main() async {
  final photoRepository = PhotoRepositoryImpl();
  final photo = await photoRepository.getPhotos(1);

  print('사진 정보는 $photo 와 같습니다');
}
