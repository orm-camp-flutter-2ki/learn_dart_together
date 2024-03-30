import 'package:learn_dart_together/240329/data_source/download_api.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('(필수) 연습문제 3. 사진 다운로드', () {
    const String url = 'https://alimipro.com/favicon.ico';

    DownloadApi? downloadApi;
    String filePath = 'assets/images/icon.ico';
    
    setUp(() => downloadApi = DownloadApi());

    tearDown(() {
      downloadApi!.deleteFile(filePath);
      downloadApi = null;
    });

    test('그림 파일을 PC에 저장하는 프로그램을 작성', () async {
      // When
      final getImage = await downloadApi!.downloadImage(url);
      final saveImage = await downloadApi!.saveFile(getImage, filePath);
      
      // Then
      expect(saveImage.path, filePath);
    });
  });
}
