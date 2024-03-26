import 'dart:io';

import 'memo.dart';

class MemoRepository {
  // main에서 createMemo를 Memo타입으로 받음
  Future<Memo> createMemo(String text) async {
    // memo 폴더의 파일 수 + 1 = memoId
    // memo 생성
    print('create 들어옴');
    final String folderPath = 'lib/240326/memo_pad/memo';
    Directory dir = Directory(folderPath);
    print('111'); //test에서는 여기까지만 찍힘
    final int len = await dir.list().length;
    final int memoId = len.toInt() + 1;
    final memo = Memo(id: memoId, content: text);
    // memo 작성
    final String filePath = 'lib/240326/memo_pad/memo/memo$memoId.txt';
    File targetFile = File(filePath);
    await targetFile.create();
    targetFile.writeAsStringSync(text);
    return memo;
  }

  Future<List<String>> getAllMemos() async {
    final String folderPath = 'lib/240326/memo_pad/memo';
    Directory dir = Directory(folderPath);
    final int len = await dir.list().length;
    List<String> memoList = [];
    for (int i = 1; i <= len; i++) {
      memoList += ['memo$i'];
    }
    return memoList;
  }

  void deleteMemo(int id) async {
    print('삭제 들어옴');
    final String filePath = 'lib/240326/memo_pad/memo/memo$id.txt';
    print('4444');
    await File(filePath).delete();
    print('5555');
    print('메모$id 삭제됨.');
  }

  void updateMemo(Memo memo) {
    final String filePath = 'lib/240326/memo_pad/memo/memo${memo.id}.txt';
    final File targetFile = File(filePath);
    targetFile.writeAsStringSync(memo.content);
    print('메모${memo.id} 수정됨.');
  }
}
