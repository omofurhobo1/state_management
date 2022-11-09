import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:stateapp/providers/counter.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  // int num = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.watch<Counter>().number.toString(),
              style: const TextStyle(fontSize: 40),
            ),
            const Gap(50),
            ElevatedButton.icon(
                onPressed: () {
                  context.read<Counter>().increment();
                },
                icon: const Icon(Icons.add),
                label: const Text('Increase'))
          ],
        ),
      ),
    );
  }
}
