import '../model/photo.dart';

extension ToPhoto on Photo {
  Photo toPhoto() {
    return Photo(
      tags: tags ?? '',
      imageUrl: imageUrl ?? '',
    );
  }
}
