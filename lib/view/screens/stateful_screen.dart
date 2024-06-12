import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {

  @override
  void initState(){
    print('Init State');
    super.initState();
  }

  @override
  void didChangeDependencies(){
    print('Did Change Dependencies');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('Build Function');
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {});
        },
        child: Icon(Icons.add),
      )
    );
  }

  @override
  void didUpdateWidget(TestScreen oldWidget){
    print('Did Update Widget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate(){
    print('De Activate');
    super.deactivate();
  }

  @override
  void dispose(){
    print('Dispose');
    super.dispose();
  }
}
