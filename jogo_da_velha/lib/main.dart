import 'package:flutter/material.dart';
import 'package:jogo_da_velha/home.dart';

void main() => runApp(const JogoDaVelha());

class JogoDaVelha extends StatelessWidget {
  const JogoDaVelha({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jogo da Velha',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(title: 'Jogo da Velha'),
    );
  }
}
