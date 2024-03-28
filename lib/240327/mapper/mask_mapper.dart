import 'package:learn_dart_together/240327/dto/mask_dto.dart';
import 'package:learn_dart_together/240327/mapper/store_mapper.dart';
import 'package:learn_dart_together/240327/model/mask.dart';

//매핑을 한다.
extension MaskDtotoMask on MaskDto {
  //count는 int 나 double임 마스크디티오의 필드니까
  //ListStoreDto 는 List<Stores>
  //mapping은 객테에서 저 객체로 바꿔준다 ( 배 -> 사과 )
  //
  Mask toMask() {
    return Mask(
        count: count?.toInt() ?? -1,
        stores: stores?.map((e) => e.toStore()).toList() ??
            []); //Dto 형식으로 스토어 리스트에 반환하기 위해서 함
  }
}

// extension MaskToMaskDto on Mask {
//   MaskDto toMaskDto() {
//     return MaskDto(
//
//     )
//   }
// }
