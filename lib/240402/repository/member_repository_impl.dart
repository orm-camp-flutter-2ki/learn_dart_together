import 'package:dart_cli_practice/240402/data_source/member_api.dart';
import 'package:dart_cli_practice/240402/model/member.dart';
import 'package:dart_cli_practice/240402/repository/member_repository.dart';

class MemberRepositoryImpl implements MemberRepository {
  final MemberApi _memberApi;

  MemberRepositoryImpl(this._memberApi);

  @override
  Future<List<Member>> findAll() async {
    return await _memberApi.getMembers();
  }

  @override
  Future<Member> findOneById(String id) async {
    final memberList = await _memberApi.getMembers();

    return memberList.where((e) => e.id == id).first;
  }

  @override
  Future<void> save(Member member) async {
    await _memberApi.postMember(member);
  }

  @override
  Future<bool> existUser(String name, String phone) async {
    final memberList = await _memberApi.getMembers();

    return memberList.any((e) => e.name == name && e.phone == phone);
  }
}
