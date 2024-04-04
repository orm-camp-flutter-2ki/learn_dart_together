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

  // 반납해야 하는 기간이 짧은 순서대로 대출 정보를 정렬하여 반환하는 메서드
  List<Rent> getRentsSortedByDueDate() {
    var sortedRents = List<Rent>.from(_rents);
    sortedRents.sort((a, b) => a.dueDate.compareTo(b.dueDate));
    return sortedRents;
  }
}
