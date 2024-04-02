import '../model/member.dart';

abstract class MemberRepository {
  void addMember(Member member);
  void deleteMember(int memberId);
  Member? findMemberById(int memberId);
  List<Member> getAllMembers();
  void updateMember(Member member);
}
