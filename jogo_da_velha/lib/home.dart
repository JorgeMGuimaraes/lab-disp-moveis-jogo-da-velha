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
  bool _alteracoes = true;
  String _textNomeJogador = 'Jogador';
  final _controllerNomeJogador = TextEditingController();
  int? _radioTamanhoTabuleiro = 0;
  int? _radioTipoJogador = 0;
  Widget _tabuleiro = Container();

  void _atualizarText() {
    if (!_alteracoes) {
      return;
    }
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

  void _comecarJogo() {
    _carregarTabuleiro();
    _desabilitarMudancas();
    print('Começar Jogo');
    return;
  }

  void _novoJogo() {
    _tabuleiro = Container();
    _habilitarMudancas();
    print('Novo Jogo');
    return;
  }

  void _carregarTabuleiro() {
    if (_radioTamanhoTabuleiro == null) {
      return;
    }
    setState(() {
      _tabuleiro = (_radioTamanhoTabuleiro == 0)
          ? const Tabuleiro3x3()
          : const Tabuleiro4x4();
    });
  }

  void _desabilitarMudancas() {
    setState(() {
      _alteracoes = false;
    });
  }

  void _habilitarMudancas() {
    setState(() {
      _alteracoes = true;
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
              readOnly: !_alteracoes,
            ),
            Text(
              _textNomeJogador,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _tabuleiro,
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 0,
                          groupValue: _radioTamanhoTabuleiro,
                          onChanged:
                              !_alteracoes ? null : _handleTamanhoTabuleiro,
                        ),
                        const Text('3x3'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 1,
                          groupValue: _radioTamanhoTabuleiro,
                          onChanged:
                              !_alteracoes ? null : _handleTamanhoTabuleiro,
                        ),
                        const Text('4x4'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 0,
                          groupValue: _radioTipoJogador,
                          onChanged: !_alteracoes ? null : _handleTipoJogador,
                        ),
                        const Text('Jogador X'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 1,
                          groupValue: _radioTipoJogador,
                          onChanged: !_alteracoes ? null : _handleTipoJogador,
                        ),
                        const Text('Jogador O'),
                      ],
                    ),
                    TextButton(
                      onPressed: _comecarJogo,
                      child: const Text('Começar Jogo'),
                    ),
                    TextButton(
                      onPressed: _novoJogo,
                      child: const Text('Novo Jogo'),
                    ),
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
