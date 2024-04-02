import '../model/member.dart';

abstract class MemberRepository {
  void addMember(Member member); // 2) 신규 회원 ++;

  void deleteMember(int memberId); // 회원 삭제

  Member? findMemberById(int memberId); // 회원 조회

  List<Member> getAllMembers(); // 전체 회원 명단 리스트 []

  void updateMember(Member member); // 회원 정보 업데이트
}
