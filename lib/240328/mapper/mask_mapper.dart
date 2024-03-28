import 'package:learn_dart_together/240328/dto/mask_dto.dart';
import 'package:learn_dart_together/240328/mapper/store_mapper.dart';
import 'package:learn_dart_together/240328/model/mask.dart';
import 'package:learn_dart_together/240328/model/store.dart';

extension MaskDTOToMask on MaskDTO {
  Mask toMask() {
    return Mask(
        count: count?.toInt() ?? -1,
        //stores: stores, //The argument type 'List<Store>?' can't be assigned to the parameter type 'List<Store>'.
        //stores: stores != null ? stores!.map((e) => Store.fromJson(e as Map<String, dynamic>)).toList() : <Store>[]);
        stores: stores != null ? stores!.map((e) => e.toStore()).toList() : <Store>[]);
  }
}

extension MaskToMaskDTO on Mask {
  // Mask toMaskDTO() {
  //   return Mask(
  //       count: count.toInt() ?? -1,
  //       //stores: stores, //The argument type 'List<Store>?' can't be assigned to the parameter type 'List<Store>'.
  //       //stores: stores != null ? stores!.map((e) => Store.fromJson(e as Map<String, dynamic>)).toList() : <Store>[]);
  //       stores: stores != null ? stores.map((e) => e.toStore()).toList() : <Store>[]);
  // }
}
