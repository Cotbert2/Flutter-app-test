import './widgets/text_input.dart';
import './widgets/button.dart';
import 'package:flutter/material.dart';
import './../controller/relative_prime_controller.dart';

//molecula
class InputsRelativePrimes extends StatelessWidget {
  final TextEditingController controllerA;
  final TextEditingController controllerB;

  const InputsRelativePrimes({
    super.key,
    required this.controllerA,
    required this.controllerB,
  });
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextInput(
          controller: controllerA,
          labelText: 'Ingrese el primer número entero positivo',
          hintText: 'Ejemplo: 8',
        ),
        SizedBox(height: 16),
        TextInput(
          controller: controllerB,
          labelText: 'Ingrese el segundo número entero positivo',
          hintText: 'Ejemplo: 15',
        ),
      ],
    );
  }
}

//// organism (filend and button)

class RelativePrimesCard extends StatefulWidget {

  const RelativePrimesCard({super.key});

  @override
  State<RelativePrimesCard> createState() => _RelativePrimesCardState();
}

class _RelativePrimesCardState extends State<RelativePrimesCard> {
  final TextEditingController _controllerA = TextEditingController();
  final TextEditingController _controllerB = TextEditingController();
  final RelativePrimeController _controller = RelativePrimeController();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InputsRelativePrimes(
              controllerA: _controllerA,
              controllerB: _controllerB,
            ),
            SizedBox(height: 24),
            Button(
              buttonText: 'Calcular',
              onPressed: () {
                final result = _controller.checkRelativePrimes(
                  _controllerA.text,
                  _controllerB.text,
                );
                Navigator.pushNamed(
                  context,
                  '/result_page',
                  arguments: result,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

//page

class RelativePrimesView extends StatelessWidget {
  const RelativePrimesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primos Relativos'),
      ),
      body: Center(
        child: RelativePrimesCard(),
      ),
    );
  }
}