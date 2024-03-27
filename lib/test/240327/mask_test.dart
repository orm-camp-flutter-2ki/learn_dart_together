import 'package:learn_dart_together/240327/model/stores.dart';
import 'package:learn_dart_together/240327/repository/mask_repository_impl.dart';
import 'package:learn_dart_together/test/240327/expected.dart';
import 'package:test/test.dart';

void main() {
  test('mask list test', () async {
    final repository = MaskRepositoryImpl();
    final masks = await repository.getMasks();
    final storeList = masks.stores;
    final result = expected.map((e) => Stores.fromJson(e)).toList();

    expect(storeList, result);
  });
  test('mask 요소 확인', () async {
    final repository = MaskRepositoryImpl();
    final masks = await repository.getMasks();
    final store = masks.stores.first.name;
    expect(store, '승약국');
  });
}
