#Jogo da velha

Let's create a flutter app, it's a tic-tac-toe game. Below is my home file, where's all my code.

## Tasks

A. I need a row below the text
B. On the left i want a text "A"
C. On the right I need the following elements: 2 radio buttons, one with text 3x3 and the other with the text 4x4

```dart
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _textNomeJogador = 'Jogador';
  final _controllerNomeJogador = TextEditingController();

  void _atualizarText() {
    setState(() {
      _textNomeJogador = (_controllerNomeJogador.text == '') ? 'Jogador' : _controllerNomeJogador.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             TextField(
              controller: _controllerNomeJogador,
              decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nome do Jogador',
            ),
            onChanged: (value) => _atualizarText(),
             ),
            Text(
              _textNomeJogador,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}

```