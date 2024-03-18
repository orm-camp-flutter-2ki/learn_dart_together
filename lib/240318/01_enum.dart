void main() {
  AuthState state = AuthState.unauthenticated;

  switch (state) {
    case AuthState.authenticated:
      print(state);
    case AuthState.unauthenticated:
      print(state);
    case AuthState.unknown:
      print(state);
  }

  // if (state == AuthState.authenticated) {
  //
  // } else if (state == AuthState.unauthenticated) {
  //
  // }
}

enum AuthState {
  authenticated,
  unauthenticated,
  unknown,
}
