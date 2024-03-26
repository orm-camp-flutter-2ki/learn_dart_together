import 'package:learn_dart_together/240326/memo_pad/memo.dart';

import 'memo_repository.dart';

void main() async {
  final repository = MemoRepository();
// Create a new memo. |
  final Memo memo = await repository.createMemo('This is a new memo.');
  print('Created memo: $memo');
// Get all memos. |
  final memos = await repository.getAllMemos();
  for (final memo in memos) {
    print('Memo: $memo');
  }
// Update a memo.
  int id = 1;
  //memo.content = 'This is an updated memo.';
  repository.updateMemo(memo.copyWith(id: id, content: 'This is an updated memo.'));
  print('Updated memo: {$memo}{$id}');

  // Delete a memo. |

  repository.deleteMemo(5);
  print('Deleted memo with ID: 5');
}
