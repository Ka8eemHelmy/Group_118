import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:group_118/view_model/cubits/counter/counter_cubit.dart';
import 'package:group_118/view_model/cubits/counter/counter_state.dart';

class TestScreen2 extends StatelessWidget {
  const TestScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    print('Build Function');
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Hello World\nSecond Screen'),
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                print('Counter Build Only');
                return Text(CounterCubit.get(context).counter.toString());
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          CounterCubit.get(context).increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
