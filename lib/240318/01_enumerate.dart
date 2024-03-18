enum AuthState {
  authenticated,
  unauthenticated,
  unknown,
}

AuthState authState = AuthState.unknown;

// ...

void main() {
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
