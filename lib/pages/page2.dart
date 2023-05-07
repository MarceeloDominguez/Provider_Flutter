import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practica/providers/counter_provider.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        context.watch<CounterProvider>().counter.toString(),
        style: const TextStyle(
          fontSize: 50,
        ),
      ),
    );
  }
}
