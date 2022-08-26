import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/example_three_provider.dart';

class ExampleThree extends StatelessWidget {
  const ExampleThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = Provider.of<ExampleThreeProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Theme Changer')),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: () {
                state.set(ThemeMode.light);
              },
              child: Text('Light Theme')),
          ElevatedButton(onPressed: () {
             state.set(ThemeMode.dark);
          }, child: Text('Dark Theme')),
          ElevatedButton(onPressed: () {
             state.set(ThemeMode.system);
          }, child: Text('System Theme'))
        ]),
      ),
    );
  }
}
