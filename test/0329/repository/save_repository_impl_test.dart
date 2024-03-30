import 'dart:io';

import 'package:learn_dart_together/0329/repository/save_repository.dart';
import 'package:learn_dart_together/0329/repository/save_repository_impl.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() async {
  group('image 파일', () {
    final SaveRepository saveRepository = SaveRepositoryImpl();

    final directory = Directory('/Users/yong/Downloads'); // 저장된 경로

    test('디렉토리 경로 확인', () async {
      // 주어진 url에서 http.get 요청, bytedata 를 추출, Uint8List 형식의 변수 bodyBytes 에 저장
      final bytesTest = await saveRepository
          .downloadImage('https://alimipro.com/favicon.ico');

      // 위의 변수와 파일 이름을 설정하면 Directory('/Users/yong/Downloads') 저장
      saveRepository.saveFile(bytesTest, 'icon.ico');

      expect(directory.existsSync(), true);
    });
  });
}
