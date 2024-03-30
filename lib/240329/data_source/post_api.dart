import '../dto/post_dto.dart';
import '../model/post.dart';

abstract interface class PostApi {
  Future<PostDto> getPost(int id);

  Future<List<PostDto>> getPostsAll();

  // limit 갯수만큼 나눴을 때 page 번째만큼
  // https://jsonplaceholder.typicode.com/posts?_page=1&_limit=2 참고
  // 2페이지씩 나눴을 때 1페이지 출력
  // Future<List<PostDto>> getPosts({int page, int limit});

  // 추가된 Post의 id를 리턴
  Future<int> addPost(PostDto postDto);

  // 변경된 객체를 리턴
  Future<PostDto> updatePost(int id, PostDto postDto);

  // 성공 여부를 리턴
  Future<bool> deletePost(int postId);
}
