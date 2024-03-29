import 'dart:io';
import 'dart:typed_data';

abstract interface class ImageDownloadRepository {
  Future<File> saveFile(Uint8List bytes, String fileName, String savePath);
}