


import 'package:test/scaffolding.dart';
import 'package:untitled2/240326/data_source/photos_api.dart';

void main() {
  test('Photos Test', () async {
    PhotosApi photosApi = PhotosApi();
    final photos = await photosApi.getPhotos();
    final photo = await photosApi.getPhoto(1);
    print(photos);
  });
}