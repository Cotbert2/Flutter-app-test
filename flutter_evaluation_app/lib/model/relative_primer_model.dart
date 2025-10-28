/**
 * Se reciben dos enteros positivos.
 * Devuelve 1 si los números son primos relativos.
 * Devuelve 0 si no lo son.
 * Dos números son primos relativos si no tienen divisores comunes excepto la unidad.
 */

class RelativePrimerModel {
  bool _isPositive(int number) {
    return number > 0;
  }

  List<int> _getDivisors(int number) {
    List<int> divisors = [];
    for (int i = 1; i <= number; i++) {
      if (number % i == 0) divisors.add(i);
    }
    return divisors;
  }

  int areRelativePrimes(int number1, int number2) {
    List<int> divisors1 = _getDivisors(number1);
    List<int> divisors2 = _getDivisors(number2);

    for (int divisor in divisors1) {
      if (divisor != 1 && divisors2.contains(divisor)) return 0;
    }
    return 1;
  }
}
