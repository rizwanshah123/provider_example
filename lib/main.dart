import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/example_one_provider.dart';
import 'provider/example_three_provider.dart';
import 'provider/example_two_provider.dart';
import 'screens/example_one.dart';
import 'screens/example_three.dart';
import 'screens/example_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
        ChangeNotifierProvider(create: (_) => ExampleTwoProvider()),
        ChangeNotifierProvider(create: (_) => ExampleThreeProvider()),
      ],
      child: Builder(builder: (context) {
        var state = Provider.of<ExampleThreeProvider>(context);
        return MaterialApp(
          themeMode: state.get(),
          home: ExampleThree(),
          theme: ThemeData(
              brightness: Brightness.light,
              appBarTheme: AppBarTheme(color: Colors.teal)),
          darkTheme: ThemeData(
              brightness: Brightness.dark,
              appBarTheme: AppBarTheme(
                  color: Colors.red, foregroundColor: Colors.green)),
        );
      }),
    );
  }
}
