import 'package:learn_dart_together/24_03_27/model/mask.dart';
import 'package:learn_dart_together/24_03_27/model/stores.dart';
import 'package:learn_dart_together/24_03_27/repository/mask_repository_impl.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'expected.dart';

void main(){
test('getMask() 테스트', ()async
{
  expected;
  MaskRepositoryImpl maskImpl = MaskRepositoryImpl();
  final mask = await maskImpl.getMask();
  expect(mask.stores,expected.toList().map((e) => Stores.fromJson(e)));      // List<Stores> ,List<Map<String,dynamic>>
});
}