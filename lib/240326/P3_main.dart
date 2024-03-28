import 'package:learn_dart_together/240326/repository/p3_photo_repository.dart';

import 'model_class/p3_model_class.dart';

void main() async {
  final photoRepository = PhotoRepository();

  final List<Photo> photo = await photoRepository.getPhotos(3);
  print(photo.length);
  print(photo);
}
