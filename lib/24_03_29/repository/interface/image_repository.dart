import 'dart:io';
import 'dart:typed_data';

abstract interface class ImageRepository {
  Future<Uint8List> getImage(String url);

  Future<File> saveImageFile(Uint8List image, String fileName, String path);
}