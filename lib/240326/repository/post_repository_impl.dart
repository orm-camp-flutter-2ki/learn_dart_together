import 'package:dart_cli_practice/240326/data_source/post_api.dart';
import 'package:dart_cli_practice/240326/model/post.dart';
import 'package:dart_cli_practice/240326/repository/post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  final api = PostApi();

  @override
  Future<Post> getPost(int id) async {
    return await api.getPost(id);
  }

  Future<List<Post>> _getAllPosts() async {
    return await api.getPosts();
  }

  @override
  Future<List<Post>> getPosts({int? page, int? limit}) async {
    if (page == null || limit == null) {
      // 두 파라미터 중 하나가 null 일때
      print('page 와 limit 인자가 모두 없거나 모두 존재해야 합니다.');
      print('모든 post 의 목록을 가져옵니다.');
      return await _getAllPosts();
    } else {
      // 두 파라미터가 다 존재할 때
      final posts = await api.getPosts();

      // page 가 1보다 작을 때 경우 처리 -> page 1로 할당
      final pageNum = page < 1 ? 1 : page;

      // sublist 에서 start와 end 범위를 일반화
      //    - start 는 pageNum - 1 한것과 limit를 곱하여 시작 원소의 인덱스를 지정
      //    - end 는 현재 pageNum 과 limit를 곱하여 리스트의 몇번째 원소 까지 잘라내는지 지정
      //      만약, 그 값이 posts.length를 넘어서면 강제로 posts.length 를 사용하도록 설정
      final start = (pageNum - 1) * limit;
      final end =
          (pageNum * limit) < posts.length ? pageNum * limit : posts.length;

      return posts.sublist(start, end);
    }
  }
}
