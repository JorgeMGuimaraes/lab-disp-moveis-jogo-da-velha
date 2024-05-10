#Jogo da velha

Let's create a flutter app, it's a tic-tac-toe game. Below is my home file, where's all my code.

## Tasks

A. instead of returning Text('tabuleiro 3x3'), I want to return a image.
B. I need to wrap this image in a widget that can change background color


```dart
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
    return const Text('tabuleiro 3x3');
  }
}
```