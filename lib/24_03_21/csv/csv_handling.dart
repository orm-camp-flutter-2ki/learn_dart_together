import 'dart:io';
import 'package:csv/csv.dart';

void main() async {
  String dataSavePath = './lib/24_03_21/csv/data/';

  try {
    //파일 열기
    File csvFilePath = File('${dataSavePath}sample.csv');

    //파일 내용물 스트링 반환
    final csvString = await csvFilePath.readAsString();

    //스트링 to List 컨버팅
    final List<List<dynamic>> convertedData =
        const CsvToListConverter(eol: '\n').convert(csvString);

    //List 내용물 String 공백 제거 - 추후 원하는 값 제대로 찾기 위함.
    final List<List<dynamic>> changedData = convertedData
        .map((i) => i.map((e) => e is String ? e.trim() : e).toList())
        .toList();

    //원하는 값 (한석봉)이 있는지 검사, 있다면 한석봉을 김석봉으로 값변경후 파일 복사
    for (var i = 0; i < changedData.length; i++) {
      if (changedData[i].contains('한석봉')) {
        final index = changedData[i].indexOf('한석봉');
        changedData[i][index] = '김석봉';

        final stringCSV = const ListToCsvConverter().convert(changedData);
        File copyFile =
            await csvFilePath.copy('${dataSavePath}sample_copy.csv');
        await copyFile.writeAsString(stringCSV);
      }
    }
  } catch (e) {
    print('파일이 존재하지 않음');
  }
}
