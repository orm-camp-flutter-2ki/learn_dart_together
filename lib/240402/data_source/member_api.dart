import 'package:dart_cli_practice/240402/model/member.dart';

abstract interface class MemberApi {
  Future<void> postMember(Member member);

  Future<List<Member>> getMembers();
}
