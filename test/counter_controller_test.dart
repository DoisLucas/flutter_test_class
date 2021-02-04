import 'package:aula_teste/counter_controller.dart';
import 'package:flutter_test/flutter_test.dart';

// flutter test

void main() {
  CounterController counterController;

  group('Counter', () {
    test('should decrement the value correctly', () {
      //Arrange
      final counterController = CounterController();
      //Act
      var value = counterController.decrement(9);
      //Assert
      expect(value, 8);
    });

    test('should increment the value correctly', () {
      expect(counterController.increment(10), 11);
    });

    test('should return true if the value is negative', () {
      expect(counterController.isNegative(-2), true);
    });

    test('should return false if the value is not negative', () {
      expect(counterController.isNegative(2), false);
    });

    test('must return false if the value is not zero', () {
      expect(counterController.isZero(3), false);
    });

    test('must return true if the value is zero', () {
      expect(counterController.isZero(0), true);
    });
  });
}
