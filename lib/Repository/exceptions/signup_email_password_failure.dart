class SignupEmailPasswordFailure {
  final String message;

  SignupEmailPasswordFailure(this.message)
      : assert(message != null, 'message cannot be null');

  factory SignupEmailPasswordFailure.code(String code) {
    switch (code) {
      case 'weal-password':
        return SignupEmailPasswordFailure('Your Password is Weak');
      case 'invalid-email':
        return SignupEmailPasswordFailure('invalid email');
      case 'email-already-in-use':
        return SignupEmailPasswordFailure('email-already-in-use');
      case 'operation-not-allowed':
        return SignupEmailPasswordFailure('operation-not-allowed');
      case 'user-disabled':
        return SignupEmailPasswordFailure('user-disabled');
      default:
        throw ArgumentError('Invalid code: $code');
    }
  }
}
