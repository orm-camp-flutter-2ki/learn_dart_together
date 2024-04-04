import 'package:dart_cli_practice/240402/model/member.dart';

abstract interface class MemberService {
  Future<void> signUp(Member member);

  Future<Member> getMember(String id);

  Future<List<Member>> getMembers();
}
