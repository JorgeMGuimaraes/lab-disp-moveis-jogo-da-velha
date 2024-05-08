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
