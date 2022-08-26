import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/example_one_provider.dart';

class ExampleOne extends StatelessWidget {
  const ExampleOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = Provider.of<ExampleOneProvider>(context,listen:false);
    return Scaffold(
      appBar: AppBar(title: Text('counter app')),
      body: Center(
        child: Consumer<ExampleOneProvider>(
          builder: (context, value, child) {
            return Text(value.get().toString());
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          state.setValue()
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
