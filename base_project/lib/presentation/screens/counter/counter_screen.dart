import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:base_project/presentation/providers/counter_provider.dart';
import 'package:base_project/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const name = 'counter_screen';
  const CounterScreen({super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textStyle = Theme.of(context).textTheme.titleLarge;
    final int clickCounter = ref.watch(counterProvider);
    // final bool isDarkMode = ref.watch(isDarkModeProvider);
    final isDarkMode = ref.watch(themeNotifierProvider).isDarkMode;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
              icon: isDarkMode
                  ? const Icon(Icons.dark_mode_outlined)
                  : const Icon(Icons.light_mode_outlined),
              onPressed: () {
                // ref.read(isDarkModeProvider.notifier).update((state) => !state);
                ref.read(themeNotifierProvider.notifier).toggleDarkMode();
              })
        ],
      ),
      body: Center(
        child: Text('Valor: $clickCounter', style: textStyle)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ref.read(counterProvider.notifier).update((state) => state + 1);
          ref.read(counterProvider.notifier).state ++;
          
        },
        child: const Icon(Icons.add_rounded),
      ),
    );
  }

  
}