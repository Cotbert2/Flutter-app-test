/**
 * Se recibe dos enteros positivos si los dos números
 * Devuelve uno si los numeros son primos relativos
 * Devuelve cero si no lo son
 *  Dos numeros son primos relativos si no tienen divisores comunes excepto la unidad, se deben aplicar validaciones de datos necesarias
 */
import 'package:flutter/material.dart';
import 'package:flutter_evaluation_app/view/result_prime_view.dart';
import './view/relative_prime_view.dart';
import 'view/relative_prime_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator Salary',
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
        routes: {
          '/': (context)=> const RelativePrimesView(),
          '/result_page': (context)=> const RelativePrimeView(),
          // '/result_page': (context)=> const SalaryView(),
        }
      
    );
  }
}