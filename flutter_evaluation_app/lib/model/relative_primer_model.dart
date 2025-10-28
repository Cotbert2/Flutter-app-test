/**
 * Se recibe dos enteros positivos si los dos números
 * Devuelve uno si los numeros son primos relativos
 * Devuelve cero si no lo son
 *  Dos numeros son primos relativos si no tienen divisores comunes excepto la unidad, se deben aplicar validaciones de datos necesarias
 */

class RelativePrimerModel {
  bool _isPositive(int number) {
    return number > 0;
  }

  int _calculateGCD(int a, int b) {
    while (b != 0) {
      int temp = b;
      b = a % b;
      a = temp;
    }
    return (a >= 0) ? a : -a;
  }

  int areRelativePrimes(int number1, int number2) {

    return _calculateGCD(number1, number2) == 1 ? 1 : 0;
  }
}