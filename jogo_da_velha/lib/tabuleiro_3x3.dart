import 'package:flutter/material.dart';
import 'package:jogo_da_velha/celula.dart';
import 'package:jogo_da_velha/partida.dart';

class Tabuleiro3x3 extends StatefulWidget {
  const Tabuleiro3x3({super.key, required this.partida});
  final Partida partida;

  @override
  State<Tabuleiro3x3> createState() => _Tabuleiro3x3State();
}

class _Tabuleiro3x3State extends State<Tabuleiro3x3> {
  final List<Celula> _celulas = [];
  final Partida partida = Partida();

  @override
  @mustCallSuper
  void initState() {
    super.initState();

    for (var i = 0; i < 9; i++) {
      _celulas.add(Celula(
        partida: partida,
      ));
    }

    partida.trocarJogador();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            _celulas[0],
            _celulas[1],
            _celulas[2],
          ],
        ),
        Row(
          children: <Widget>[
            _celulas[3],
            _celulas[4],
            _celulas[5],
          ],
        ),
        Row(
          children: <Widget>[
            _celulas[6],
            _celulas[7],
            _celulas[8],
          ],
        ),
      ],
    );
  }
}
