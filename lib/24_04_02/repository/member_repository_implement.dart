import '../model/member.dart';

import 'member_repository.dart';

class MemberRepositoryImplement implements MemberRepository {
  final List<Member> _members = [];

  @override
  void addMember(Member member) {
    _members.add(member);
  }

  @override
  void deleteMember(int memberId) {
    _members.removeWhere((member) => member.memberId == memberId);
  }

  @override
  Member? findMemberById(int memberId) {
    return _members.firstWhere((member) => member.memberId == memberId);
  }

  @override
  List<Member> getAllMembers() {
    return _members;
  }

  @override
  void updateMember(Member member) {
    var index = _members.indexWhere((m) => m.memberId == member.memberId);
    if (index != -1) {
      _members[index] = member;
    }
  }
}
