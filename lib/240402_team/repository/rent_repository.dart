import '../model/rent.dart';

abstract class RentRepository {
  // 이름변경 addRent -> RentBook
  void RentBook(Rent rent); // 이름변경

  bool extendRent(int memberId, String isbn);

  List<Rent> getAllRents();

  List<Rent> getRentsSortedByDueDate();

  List<Rent> getRentsByMemberId(int memberId);
}
// TODO: BOOK //책의 정보를 입력한다.
// BOOK // 1) 책 구매++;
// BOOK // 책 리스트 [{code: , title: , releaseDate: }]
// TODO: MEMBER// 회원 정보를 입력한다.
// MEMBER // 2) 신규 회원 ++;
// MEMBER // 회원 삭제
// MEMBER // 회원 조회
// MEMBER // 전체 회원 명단 리스트 []
// MEMBER // 회원 정보 업데이트
// TODO: 회원이 책을 빌려가면 대출이력이 저장된다. 기본 대출기간은 2주일이다.
// TODO: 대출은 한번 연장 가능하고 1주일 연장된다.
// TODO: 대출 목록을 표시할 수 있고, 반납 기간이 임박한 순서대로 정렬되어 표시되어야 한다.
// - RENT// 책 대출 * 이력에 저장 (대출자: , 대출기간: , 연장여부: )
// - RENT// 책 대출 이력 리스트
//   (대출 회원명: , 대출기간: , 연장여부: , 반납여부: false, 반납일자: , 연체여부: , 연체일:)
// - RENT// 책 반납 * 이력에 저장
// - RENT// 책 연장 * 이력에 저장 및 반납일자 7일++
// - RENT// 책 대출 이력 리스트  *반납 기간 임박 순으로 정렬.
//   (대출 회원명: , 대출기간: , 연장여부: , 반납여부: false, 반납일자: , 연체여부: , 연체일:)
