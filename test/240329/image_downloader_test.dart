import 'package:learn_dart_together/240329/image_downloader.dart';
import 'package:test/test.dart';

void main() {
  group('Image Downloader Test', () {
    final imageDownloader = ImageDownloader();

    test('연습문제 3번', () async {
      final data = await imageDownloader.downloadImage('https://alimipro.com/favicon.ico');
      final temp = await imageDownloader.saveFile(data, 'icon.ico');

      expect(temp.path == 'test/240329/icon.ico', true);
    });

    test('연습문제 4번', () async {
      final stopwatch = Stopwatch();
      print('다운로드 시작');
      stopwatch.start();
      final data = await imageDownloader.downloadImage('https://alimipro.com/favicon.ico');
      final temp = await imageDownloader.saveFile(data, 'icon.ico');
      stopwatch.stop();
      print('다운로드 끝');
      print('=========');
      print('소요시간 : ${stopwatch.elapsed}');
      print('용량 : ${await temp.length()}bytes');
    });

    test('연습문제 5번', () async {
      final stopwatch = Stopwatch();
      print('다운로드 시작');
      stopwatch.start();
      final data = await imageDownloader.downloadImage('https://alimipro.com/favicon.ico');
      final temp = await imageDownloader.saveFile(data, 'icon.ico');
      final temp2 = await imageDownloader.saveFile(data, 'icon.ico');
      final temp3 = await imageDownloader.saveFile(data, 'icon.ico');
      stopwatch.stop();
      print('다운로드 끝');
      print('=========');
      print('소요시간 : ${stopwatch.elapsed}'); // 0:00:00.171255

      print('\n');
      print('---------');
      print('\n');
      stopwatch.reset();

      print('다운로드 시작');
      stopwatch.start();
      final asyncData = await imageDownloader.downloadImage('https://alimipro.com/favicon.ico');
      await Future.wait(
          [
            imageDownloader.saveFile(asyncData, 'icon.ico'),
            imageDownloader.saveFile(asyncData, 'icon.ico'),
            imageDownloader.saveFile(asyncData, 'icon.ico')
          ]
      );
      stopwatch.stop();
      print('다운로드 끝');
      print('=========');
      print('소요시간 : ${stopwatch.elapsed}'); // 0:00:00.029579
    });
  });
}