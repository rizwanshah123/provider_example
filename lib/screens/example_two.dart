import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/example_two_provider.dart';

class ExampleTwo extends StatelessWidget {
  const ExampleTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('build');
    //var state = Provider.of<ExampleTwoProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(title: Text('counter app')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleTwoProvider>(
            builder: (context, value, child) => Slider(
                min: 0,
                max: 1,
                value: value.get(),
                onChanged: (val) {
                  value.set(val);
                }),
          ),
          Consumer<ExampleTwoProvider>(
            builder: (context, value, child) =>
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Expanded(
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.amber.withOpacity(value.get()),
                  ),
                  child: Text('container one'),
                ),
              ),
              Expanded(
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.teal.withOpacity(value.get()),
                  ),
                  child: Text('container two'),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
