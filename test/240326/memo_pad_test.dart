import 'package:learn_dart_together/240326/memo_pad/memo.dart';
import 'package:learn_dart_together/240326/memo_pad/memo_repository.dart';
import 'package:test/test.dart';

void main() async {
  final repository = MemoRepository();

  test('memoPad createMemo', () async {
    MemoRepository().createMemo('test');
  });
  test('memoPad getAllMemos', () async {
    final memos = await repository.getAllMemos();
    print(memos);
  });
  test('memoPad updateMemo', () async {
    int updatedId = 4;
    String updatedContent = '${DateTime.now().toString()}에 수정되었습니다.';
    final memo = Memo(id: updatedId, content: updatedContent);
    repository.updateMemo(memo);
  });
  test('memoPad deleteMemo', () {
    int deletedId = 12;
    repository.deleteMemo(deletedId);
  });
}
