import 'dart:io';

void main() async {
  // sample.csv 에 쓰기
  final sample = File('lib/정다희/24_03_21/sample.csv');
  final data = await sample.readAsLines();
  // 김석봉으로 바뀐 데이터를 담는곳
  List<List<String>> newData = [];
  // 한석봉 찾은 여부
  bool isMrHan = false;
  for (final row in data) {
    if (row.contains('한석봉')) {
      String replacedRow = row.replaceAll('한석봉', '김석봉');
      newData.add(replacedRow.split(','));
      //한석봉씨를 찾았으므로
      isMrHan = true;
    } else {
      newData.add(row.split(','));
    }
  }

  if (!isMrHan) {
    print('한석봉씨를 찾지 못했습니다.');
  }

  if (isMrHan) {
    final sampleCopy = File('lib/정다희/24_03_21/sample_copy.csv');
    for (final newRow in newData) {
      // append, flush 를 해주지 않으면 계속 덮어쓰기가 되서 첫쨰줄 실종됨.
      await sampleCopy.writeAsString(newRow.join(',') + '\n',
          mode: FileMode.append, flush: true);
    }
  }
}
