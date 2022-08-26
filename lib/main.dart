import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/example_one_provider.dart';
import 'screens/example_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers:[
      ChangeNotifierProvider(create: (_)=>ExampleOneProvider()),
     // ChangeNotifierProvider(create: (_)=>ExampleTwoProvider()),
    ],
   child: const MaterialApp(
    home: ExampleOne(),
   ),    
     );
  }
}
