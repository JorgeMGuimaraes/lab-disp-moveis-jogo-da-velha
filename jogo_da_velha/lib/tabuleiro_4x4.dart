import 'package:flutter/material.dart';

class Tabuleiro4x4 extends StatefulWidget {
  const Tabuleiro4x4({super.key, required this.title});

  final String title;

  @override
  State<Tabuleiro4x4> createState() => _Tabuleiro4x4State();
}

class _Tabuleiro4x4State extends State<Tabuleiro4x4> {

  @override
  Widget build(BuildContext context) {
    return const Text('tabuleiro 4x4');
  }
}