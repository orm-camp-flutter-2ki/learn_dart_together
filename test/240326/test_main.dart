import 'package:learn_dart_together/240326/repository/memoRepository.dart';

void main() async {
  final repository = MomoRepositorty();

  final memo = await repository.createMemo('this is a new');
  print('$memo');

  final memos = await repository.getAllMemos();
  for (final memo in memos) {
    print('$memo');
  }

  memo.content = 'update memo';
  await repository.updateMemo(memo);
  print('$memo');

  await repository.deleteMemo(memo.id);
  print('${memo.id}');
}
