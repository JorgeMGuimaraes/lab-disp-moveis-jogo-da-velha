import 'package:flutter/material.dart';

class Tabuleiro3x3 extends StatefulWidget {
  const Tabuleiro3x3({super.key, required this.title});

  final String title;

  @override
  State<Tabuleiro3x3> createState() => _Tabuleiro3x3State();
}

class _Tabuleiro3x3State extends State<Tabuleiro3x3> {

  @override
  Widget build(BuildContext context) {
    return Center(child: const Text('tabuleiro 3x3'));
  }
}