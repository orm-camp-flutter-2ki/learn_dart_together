import 'dart:async';

import '../datamodel/memo.dart';

class MomoRepositorty {
  static final Map<int, Memo> memoMomoRepositortyMap = {};
  static int idInt = 0;

  Future<Memo> createMemo(String memoString) async {
    idInt++;
    Memo memo = Memo(idInt, memoString);
    memoMomoRepositortyMap[idInt] = memo;
    return Future<Memo>.delayed(Duration(seconds: 1), () {
      return memo;
    });
  }

  Future<List<Memo>> getAllMemos() async {
    final keys = memoMomoRepositortyMap.keys;
    List<Memo> Memos = [];
    for (int key in keys) {
      Memos.add(memoMomoRepositortyMap[key]!);
    }
    return Future<List<Memo>>.delayed(Duration(seconds: 1), () {
      return Memos;
    });
  }

  Future<void> updateMemo(Memo memo) async {
    memoMomoRepositortyMap[memo.id] = memo;
  }

  Future<void> deleteMemo(int memoId) async {
    memoMomoRepositortyMap.remove(memoId);
  }
}
