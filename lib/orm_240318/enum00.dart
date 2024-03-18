void main() {
  AuthState authState = AuthState.authenticated;

  switch (authState) {
    case AuthState.authenticated:
      print('authenticated');
      break;
    case AuthState.unauthenticated:
      print('unauthenticated');
      break;
    case AuthState.unknown:
      print('unknown');
      break;
  }
}

enum AuthState { authenticated, unauthenticated, unknown }
