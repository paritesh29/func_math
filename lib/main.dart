import 'package:flutter/material.dart';

import 'func_math.dart';
import 'latex_renderer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Math Utils Demo')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Function usage
              Text('Factorial(5): ${MathFunctions.factorial(5)}'),
              Text('Fibonacci(10): ${MathFunctions.fibonacci(10)}'),
              Text('Is 17 prime? ${MathFunctions.isPrime(17)}'),
              Text('GCD(48,18): ${MathFunctions.gcd(48, 18)}'),
              Text('LCM(4,6): ${MathFunctions.lcm(4, 6)}'),

              // LaTeX rendering
              const LatexRenderer(
                expression: r'\frac{\sqrt{x^2 + y^2}}{2\pi}',
                padding: EdgeInsets.all(20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}