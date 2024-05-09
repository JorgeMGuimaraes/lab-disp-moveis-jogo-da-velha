import 'package:flutter/material.dart';
import 'package:jogo_da_velha/tabuleiro_3x3.dart';
import 'package:jogo_da_velha/tabuleiro_4x4.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _textNomeJogador = 'Jogador';
  final _controllerNomeJogador = TextEditingController();
  int? _radioTamanhoTabuleiro = 0;
  int? _radioTipoJogador = 0;

  void _atualizarText() {
    setState(() {
      _textNomeJogador = (_controllerNomeJogador.text == '')
          ? 'Jogador'
          : _controllerNomeJogador.text;
    });
  }

  void _handleTamanhoTabuleiro(int? value) {
    setState(() {
      _radioTamanhoTabuleiro = value;
    });
  }

  void _handleTipoJogador(int? value) {
    setState(() {
      _radioTipoJogador = value;
    });
  }

  void _logicaNovoJogo() {
    print('new game');
    return;
  }

  Widget _carregarTabuleiro(){
    if (_radioTamanhoTabuleiro == 0) {
      return Tabuleiro3x3(title: 'title');
    }
    else if(_radioTamanhoTabuleiro == 1) {
      return Tabuleiro4x4(title: 'title');
    }

    return Container();
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _carregarTabuleiro(),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 0,
                          groupValue: _radioTamanhoTabuleiro,
                          onChanged: _handleTamanhoTabuleiro,
                        ),
                        const Text('3x3'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 1,
                          groupValue: _radioTamanhoTabuleiro,
                          onChanged: _handleTamanhoTabuleiro,
                        ),
                        const Text('4x4'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 0,
                          groupValue: _radioTipoJogador,
                          onChanged: _handleTipoJogador,
                        ),
                        const Text('Jogador X'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 1,
                          groupValue: _radioTipoJogador,
                          onChanged: _handleTipoJogador,
                        ),
                        const Text('Jogador O'),
                      ],
                    ),
                    TextButton(
                      onPressed: _logicaNovoJogo,
                      child: const Text('Começar Jogo'),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
