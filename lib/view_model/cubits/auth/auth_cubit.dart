import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(InitAuthState());

  static AuthCubit get(context) => BlocProvider.of<AuthCubit>(context);

  bool hidePassword = true;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void togglePassword() {
    hidePassword = !hidePassword;
    emit(TogglePasswordState());
  }

  void login() async {
    emit(LoginLoadingState());
    print(state);

    Map<String, dynamic> response = {
      'status': 200,
      'message': 'Login Success',
    };

    Map<String, dynamic> error = {
      'status': 400,
      'message': 'Email or Password is incorrect',
    };
    await Future.delayed(
      const Duration(
        seconds: 2,
      ),
        (){
        emit(LoginSuccessState());
        print(state);
        },
    );
  }
}
