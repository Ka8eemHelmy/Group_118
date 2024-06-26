import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:group_118/view/screens/stateful_screen_2.dart';
import 'package:group_118/view_model/cubits/counter/counter_cubit.dart';

import '../../view_model/cubits/counter/counter_state.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('Build Function');
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TestScreen2(),
              ),
            );
          },
          icon: Icon(Icons.arrow_forward),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Hello World\ncounter'),
            BlocConsumer<CounterCubit, CounterState>(
              buildWhen: (previous, current) {
                return current is IncrementCounterState || current is DecrementCounterState || current is ResetCounterState;
              },
              listener: (context2, state) {
                // if (state is IncrementCounterState) {
                //   ScaffoldMessenger.of(context).showSnackBar(
                //     SnackBar(
                //       content: Text(
                //         'You Are Increment',
                //       ),
                //     ),
                //   );
                // }
              },
              builder: (context, state) {
                print('Counter Build Only');
                return Text(CounterCubit.get(context).counter.toString());
              },
            ),
            Expanded(
              child: BlocBuilder<CounterCubit, CounterState>(
                buildWhen: (previous, current) {
                  return current is AddNewInputState;
                },
                builder: (context, state) {
                  print('Inputs Build Only');
                  return ListView.separated(
                    padding: EdgeInsets.all(12),
                    itemBuilder: (context, index) {
                      return Text(CounterCubit.get(context).inputs[index]);
                    },
                    separatorBuilder: (context, index) {
                      return Divider();
                    },
                    itemCount: CounterCubit.get(context).inputs.length,
                  );
                },
              ),
            ),
            SafeArea(
              bottom: false,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      CounterCubit.get(context).increment();
                    },
                    child: Icon(Icons.add),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      CounterCubit.get(context).subtract();
                    },
                    child: Icon(Icons.exposure_minus_1),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      CounterCubit.get(context).reset();
                    },
                    child: Icon(Icons.cleaning_services_rounded),
                  ),
                ],
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: TextFormField(
                  controller: CounterCubit.get(context).inputController,
                  onFieldSubmitted: (value) {
                    CounterCubit.get(context).addInput();
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
