abstract class AuthState {}

final class InitAuthState extends AuthState {}

final class TogglePasswordState extends AuthState {}

final class LoginLoadingState extends AuthState {}

final class LoginSuccessState extends AuthState {}

final class LoginErrorState extends AuthState {
  final String error;
  LoginErrorState({required this.error});
}