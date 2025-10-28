import 'package:flutter/material.dart';
class RelativePrimeView extends StatefulWidget {
  const RelativePrimeView({super.key});

  @override
  State<RelativePrimeView> createState() => _RelativePrimeViewState();
}

class _RelativePrimeViewState extends State<RelativePrimeView> {
  @override
  Widget build(BuildContext context) {
    final result = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('Relative Prime Result'),
      ),
      body: Center(
        child: Text(
          result,
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}