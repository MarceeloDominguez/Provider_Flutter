import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practica/providers/counter_provider.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            context.watch<CounterProvider>().counter.toString(),
            style: const TextStyle(fontSize: 50),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<CounterProvider>().increment();
            },
            child: const Text('sumar'),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<CounterProvider>().decrement();
            },
            child: const Text('restar'),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<CounterProvider>().reset();
            },
            child: const Text('reset'),
          ),
        ],
      ),
    );
  }
}
