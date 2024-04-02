import '../model/rent.dart';

abstract class RentRepository {
  void addRent(Rent rent);
  bool extendRent(int memberId, String isbn);
  List<Rent> getAllRents();
  List<Rent> getRentsByMemberId(int memberId);
}
