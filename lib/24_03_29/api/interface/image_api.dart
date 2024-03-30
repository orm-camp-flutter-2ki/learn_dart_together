import 'dart:typed_data';

abstract interface class ImageApi {
  Future<Uint8List> getImage(String url);
}
