import './../model/relative_primer_model.dart';

class RelativePrimeController {
  String checkRelativePrimes(String a, String b){
    if (a.isEmpty || b.isEmpty) {
      return 'Error: Ambos campos deben ser llenados.';
    }

    final number1 = int.tryParse(a);
    final number2 = int.tryParse(b);
    if (number1 == null || number2 == null) {
      return 'Error: Ambos valores deben ser enteros válidos.';
    }

    final model = RelativePrimerModel();
    if (number1 <= 0 || number2 <= 0) {
      return 'Error: Ambos números deben ser positivos.';
    }

    if (model.areRelativePrimes(number1, number2) == 1) {
      return 'Los números $number1 y $number2 son primos relativos. \n Resultado: 1';
    } else {
      return 'Los números $number1 y $number2 no son primos relativos. \n Resultado: 0';
    }
  }
}