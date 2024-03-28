import 'package:learn_dart_together/240328_homework/data_source/mask_api.dart';
import 'package:learn_dart_together/240328_homework/dto/mask_dto.dart';
import 'package:learn_dart_together/240328_homework/mapper/store_mapper.dart';
import 'package:learn_dart_together/240328_homework/repository/mask_repository_impl.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

// import '../240327_homework/expected.dart';
import 'mockMaskData.dart';

void main() {
  test('마스크 api 테스트', () async {
    // final expectedData = expectedResult
    //     .map((e) => StoreDto.fromJson(e))
    //     .map((e) => e.toStore())
    //     .toList();
    // final repository = MaskRepositoryImpl(MaskApi());
    //
    // final masks = await repository.getStores();
    //expect(masks == expectedData, true);

    final expectedData = MaskDto.fromJson(jsonString).toMask();

    final repository = MaskRepositoryImpl(MaskApi());
    final masks = await repository.getMasks();

    expect(masks == expectedData, true);
  });
  test('마스크 mapper 테스트', () {});
  test('마스크 resposit 테스트', () {});
}
