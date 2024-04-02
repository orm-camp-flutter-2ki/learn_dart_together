import 'package:dart_cli_practice/240402/data_source/member_api_impl.dart';
import 'package:dart_cli_practice/240402/model/member.dart';
import 'package:mockito/mockito.dart';

import './mockData.dart' as MockData;

class MockMemberApi extends Mock implements MemberApiImpl {
  @override
  Future<List<Member>> getMembers() async => super.noSuchMethod(
        Invocation.getter(#getMembers),
        returnValue: MockData.mockMemberList,
      );

  @override
  Future<void> postMember(Member member) async =>
      super.noSuchMethod(Invocation.method(#postMember, [member]));
}
