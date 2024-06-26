import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:group_118/view/components/text_custom.dart';
import 'package:group_118/view/screens/instagram/instagram_screen.dart';
import 'package:group_118/view_model/cubits/auth/auth_cubit.dart';
import 'package:group_118/view_model/cubits/auth/auth_state.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Form(
            key: AuthCubit.get(context).formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: AuthCubit.get(context).emailController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if ((value ?? '').trim().isEmpty) {
                      return 'Please enter your Password';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Enter Your Email, exaple: John Doe',
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                        width: 1,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black87,
                        width: 1,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 1,
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 2,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                // TextFormField(
                //   controller: AuthCubit.get(context).phoneController,
                //   keyboardType: TextInputType.text,
                //   textInputAction: TextInputAction.next,
                //   onTapOutside: (_) {
                //     FocusManager.instance.primaryFocus!.unfocus();
                //   },
                //   validator: (value) {
                //     if ((value ?? '').trim().isEmpty) {
                //       return 'Please enter your Phone';
                //     } else if ((value ?? '').trim().length != 11) {
                //       return 'Phone must be at least 11 characters long';
                //     }
                //     return null;
                //   },
                //   decoration: InputDecoration(
                //     hintText: 'Enter Your Phone',
                //     labelText: 'Phone',
                //     prefixIcon: Icon(Icons.phone),
                //     border: OutlineInputBorder(),
                //     focusedBorder: OutlineInputBorder(
                //       borderSide: BorderSide(
                //         color: Colors.blue,
                //         width: 2,
                //       ),
                //     ),
                //     enabledBorder: OutlineInputBorder(
                //       borderSide: BorderSide(
                //         color: Colors.purple,
                //         width: 1,
                //       ),
                //     ),
                //     disabledBorder: OutlineInputBorder(
                //       borderSide: BorderSide(
                //         color: Colors.black87,
                //         width: 1,
                //       ),
                //     ),
                //     errorBorder: OutlineInputBorder(
                //       borderSide: BorderSide(
                //         color: Colors.red,
                //         width: 1,
                //       ),
                //     ),
                //     focusedErrorBorder: OutlineInputBorder(
                //       borderSide: BorderSide(
                //         color: Colors.red,
                //         width: 2,
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 12,
                ),
                BlocBuilder<AuthCubit, AuthState>(
                  buildWhen: (previous, current) {
                    return current is TogglePasswordState;
                  },
                  builder: (context, state) {
                    return TextFormFieldCustom(
                      controller: AuthCubit.get(context).passwordController,
                      hidePassword: AuthCubit.get(context).hidePassword,
                      obscuringCharacter: '*',
                      labelText: 'Password',
                      hintText: 'Enter Your Password',
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                        onPressed: () {
                          AuthCubit.get(context).togglePassword();
                        },
                        icon: Icon(
                          AuthCubit.get(context).hidePassword
                              ? Icons.visibility
                              : Icons.visibility_off_outlined,
                        ),
                      ),
                      validator: (value) {
                        if ((value ?? '').trim().isEmpty) {
                          return 'Please enter your Password';
                        }
                        return null;
                      },
                    );
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                BlocConsumer<AuthCubit, AuthState>(
                  listener: (context, state) {
                    if(state is LoginSuccessState){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InstagramScreen(),
                        ),
                      );
                    }
                    else if (state is LoginErrorState){
                      Fluttertoast.showToast(
                        msg: state.error,
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 5,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0,
                      );
                    }
                  },
                  buildWhen: (previous, current) {
                    return current is LoginLoadingState || current is LoginSuccessState || current is LoginErrorState;
                  },
                  builder: (context, state) {
                    if (state is LoginLoadingState) {
                      return const CircularProgressIndicator();
                    } else {
                      return ElevatedButton(
                        onPressed: () {
                          if (AuthCubit.get(context)
                              .formKey
                              .currentState!
                              .validate()) {
                            AuthCubit.get(context).login();
                          } else {
                            Fluttertoast.showToast(
                              msg: "Please, Enter The Valid Data!!!!",
                              toastLength: Toast.LENGTH_LONG,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 5,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0,
                            );
                          }
                        },
                        child: Text('Login'),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

enum Status {
  loading,
  success,
  error,
}

void main() {
  Status kareem = Status.loading;

  kareem = Status.success;

  if (kareem == Status.error) {}
}
