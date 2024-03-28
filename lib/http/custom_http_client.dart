abstract interface class CustomHttpClient{

  /// http.Response를 리턴해야 하는 걸까...?
  Future<String> get(String url);
}