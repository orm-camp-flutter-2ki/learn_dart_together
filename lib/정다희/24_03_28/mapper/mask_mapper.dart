// http://104.198.248.76:3000/mask
//
// 위 내용을 데이터소스로 하고 다음 조건에 맞게 코드를 작성하시오
//
// 위 내용 전체를 그대로 담을 수 있는 MaskDto 를 작성
//
// MaskRepository 를 수정
// 매장 정보를 제공하는 Store 모델 클래스 작성
// Future<List<Store>> 를 제공
// 불완전한 데이터는 제외
//
// Dto, Mapper를 활용할 것

import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_28/dto/store_dto.dart';
import '../model/mask.dart';

extension MaskDtoToMask on StoresDto {
  Store toStore() {
    return Store(
      addr: addr ?? '',
      code: code ?? '',
      lat: lat ?? 0,
      lng: lng ?? 0,
      name: name ?? '',
      type: type ?? '',
      createdAt: createdAt ?? '',
      remainStat: remainStat ?? '',
      stockAt: stockAt ?? '',
    );
  }
}
