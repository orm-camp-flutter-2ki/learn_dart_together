import 'dart:io';

class FileService {
  Future<void> replaceText ({
    required String copyPath,
    required String pastePath,
    required String targetText,
    required String changeText
  }) async {
    final copyFile = File(copyPath);
    final pasteFile = File(pastePath);

    try {
      final copyFileText = await copyFile.readAsString();
      await pasteFile.writeAsString(copyFileText.replaceAll(targetText, changeText));
    } on PathNotFoundException catch (e) {
      print('에러 : 파일을 찾을 수 없습니다.');
    } catch (e) {
      print('에러 : $e');
    }
  }
}