class CounterController {
  int increment(int value) {
    return value + 1;
  }

  int decrement(int value) {
    return value - 1;
  }

  bool isNegative(int value) {
    return value < 0;
  }

  bool isZero(int value) {
    return value == 0;
  }
}
