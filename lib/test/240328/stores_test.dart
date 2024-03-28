import 'package:learn_dart_together/240328/repository/mask_repository_impl.dart';
import 'package:test/test.dart';

void main() {
  test('store list test', () async {
    final reposiotory = MaskRepositoryImpl();
    final masks = await reposiotory.getMasks();
    final result = masks.stores;
    expect(result.length, 222);
    expect(result.first.name, '승약국');
    expect(result.first.addr, '서울특별시 강북구 솔매로 38 (미아동)');
  });
}
