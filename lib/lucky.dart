import 'dart:io';
import 'dart:math';

class Lucky {
  final int luckyNumber;

  Lucky() : luckyNumber = _generateLuckyNumber();

  static int _generateLuckyNumber() {
    int min = int.parse(Platform.environment['MIN'] ?? '1');
    int max = int.parse(Platform.environment['MAX'] ?? '100');
    Random random = Random();
    return min + random.nextInt(max - min + 1);
  }
}
