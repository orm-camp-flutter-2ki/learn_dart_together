import '../model/mask.dart';

abstract interface class MaskRepository {
  Future <List<Mask>> getMasks();
}