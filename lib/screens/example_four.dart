import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> count = ValueNotifier<int>(0);
    return Scaffold(
      appBar: AppBar(title: Text('counter app')),
      body: Center(
          child: ValueListenableBuilder(
              valueListenable: count,
              builder: (context, vaue, child) {
                return Text(count.value.toString());
              })),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {count.value++},
        child: Icon(Icons.add),
      ),
    );
  }
}
