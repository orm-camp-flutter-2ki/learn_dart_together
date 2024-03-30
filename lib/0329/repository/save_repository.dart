import 'dart:io';
import 'dart:typed_data';

abstract interface class SaveRepository {
  Future<Uint8List> downloadImage(String url);

  Future<File> saveFile(Uint8List bytes, String fileName);
}
