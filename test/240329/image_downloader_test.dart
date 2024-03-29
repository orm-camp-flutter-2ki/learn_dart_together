import 'package:learn_dart_together/240329/image_downloader.dart';
import 'package:test/test.dart';

void main() {
  group('Image Downloader Test', () {
    final imageDownloader = ImageDownloader();

    test('download test', () async {
      final data = await imageDownloader.downloadImage('https://alimipro.com/favicon.ico');
      final temp = await imageDownloader.saveFile(data, 'icon.ico');

      expect(temp.path == 'test/240329/icon.ico', true);
    });
  });
}