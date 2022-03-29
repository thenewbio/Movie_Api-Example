import 'package:hooks_riverpod/hooks_riverpod.dart';

class CounterProvider extends StateNotifier<int> {
  CounterProvider() : super(0);

  void increment() => state++;
}

final countProvider = StateNotifierProvider((ref) {
  return CounterProvider();
});
