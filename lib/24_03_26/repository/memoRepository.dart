import '../dataClass/memo.dart';

class MemoRepository {
  static List<Memo> memoList = <Memo>[];

  MemoRepository();

  Memo createMemo(String text) {
    Memo memo = Memo(text);
    memoList.add(memo);
    return memo;
  }

  Future<List<Memo>> getAllMemos() async {
    return memoList;
  }

  updateMemo(Memo memo) {}

  deleteMemo(int id) {
    //memoList 요소중에 id가 memo.id인 것을 찾아서 삭제

    memoList.removeWhere((e) => e.id == id);
  }
}

void main() async {
  final repository = MemoRepository();
// Create a new memo.
  final memo = await repository.createMemo('This is a new memo.');
  print('Created memo: $memo');
// Get all memos.
  final memos = await repository.getAllMemos();
  for (final memo in memos) {
    print('Memo: $memo');
  }
// Update a memo.
  memo.content = 'This is an updated memo. ';
  await repository.updateMemo(memo); //무엇을 업데이트 하라는건지
  print('Updated memo: $memo');
// Delete a memo.
  await repository.deleteMemo(memo.id);
  print('Deleted memo with ID: ${memo.id}');
}
