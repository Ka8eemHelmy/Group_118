import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:group_118/view/screens/auth/login_screen.dart';
import 'package:group_118/view/screens/furniture/furniture_screen.dart';
import 'package:group_118/view_model/cubits/auth/auth_cubit.dart';
import 'package:group_118/view_model/cubits/counter/counter_cubit.dart';
import 'package:group_118/view_model/cubits/observer.dart';

import 'view/screens/stateful_screen.dart';

void main() {
  // Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

/// Make Some Edit in main

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterCubit(),),
        BlocProvider(create: (context) => AuthCubit(),),
      ],
      child: MaterialApp(
        home: TestScreen(),
      ),
    );
  }
}
