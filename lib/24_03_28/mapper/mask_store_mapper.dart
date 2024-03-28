import 'package:learn_dart_together/24_03_27/model/mask_store.dart';
import 'package:learn_dart_together/24_03_28/dto/mask_store_dto.dart';
import 'package:learn_dart_together/24_03_28/mapper/store_mapper.dart';

extension MaskStoreMapper on MaskStoreDto {
  MaskStore getMaskStore() {
    return MaskStore(
        count: count ?? 0,
        stores: stores?.map((e) => e.getStore()).toList() ?? []
    );
  }
}