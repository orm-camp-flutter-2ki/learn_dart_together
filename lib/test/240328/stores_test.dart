import 'package:learn_dart_together/240328/repository/mask_repository_impl.dart';
import 'package:test/test.dart';

void main() {
  test('store list test', () async {
    final reposiotory = MaskRepositoryImpl();
    final masks = await reposiotory.getMasks();
    final resulte = masks.stores;

    expect(resulte.first.name, '승약국');
    expect(resulte.first.addr, '서울특별시 강북구 솔매로 38 (미아동)');
  });
}
