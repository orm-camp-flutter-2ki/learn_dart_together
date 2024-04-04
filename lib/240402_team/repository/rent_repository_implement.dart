import '../model/rent.dart';
import 'rent_repository.dart';

class RentRepositoryImplement implements RentRepository {
  final List<Rent> _rents = [];

  @override
  void addRent(Rent rent) {
    _rents.add(rent);
  }

  @override
  bool extendRent(int memberId, String isbn) {
    for (var rent in _rents) {
      if (rent.member.memberId == memberId &&
          rent.book.isbn == isbn &&
          !rent.isExtended) {
        rent.extendRent(); // Rent 클래스 내 정의된 기간 연장 메서드를 호출
        return true;
      }
    }
    return false; // 해당 조건의 대출 기록이 없거나 이미 연장된 경우
  }

  @override
  List<Rent> getAllRents() {
    return _rents;
  }

  @override
  List<Rent> getRentsByMemberId(int memberId) {
    return _rents.where((rent) => rent.member.memberId == memberId).toList();
  }

  @override
  void RentBook(Rent rent) {
    // TODO: implement RentBook
  }

  @override
  List<Rent> getRentsSortedByDueDate() {
    // TODO: implement getRentsSortedByDueDate
    throw UnimplementedError();
  }
}
