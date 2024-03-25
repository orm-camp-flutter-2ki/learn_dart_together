import 'dart:io';

Future<void> replaceHanToKim(String source) async {
  try {
    final sourceFile = File(source);
    List<String> sources = source.split('.');
    source = sources[0] + '_copy.' + sources[1];
    String text = await sourceFile.readAsString();
    final targetFile = File(source);
    String textString = text.toString();
    textString = textString.replaceAll('한석봉', '김석봉');
    targetFile.writeAsString(textString);
    return;
  } catch (e) {
    print(e);
  }
}
