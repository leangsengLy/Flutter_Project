import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterFun extends StateNotifier<double> {
  CounterFun() : super(0);
  void increaseNumber() {
    state = state + 1;
    print(state);
  }

  void decreaseNumber() {
    state = state - 1;
  }
}

final counterProvicer = StateNotifierProvider<CounterFun, double>((ref) {
  return CounterFun();
});
