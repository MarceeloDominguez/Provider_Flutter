import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practica/providers/counter_provider.dart';
import 'package:provider_practica/screen/home_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => CounterProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      title: 'Provider',
      home: const HomeScreen(),
    );
  }
}
