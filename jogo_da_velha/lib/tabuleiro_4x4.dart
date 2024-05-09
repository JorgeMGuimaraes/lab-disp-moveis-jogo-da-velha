import 'package:flutter/material.dart';
import 'package:jogo_da_velha/celula.dart';
import 'package:jogo_da_velha/partida.dart';

class Tabuleiro4x4 extends StatefulWidget {
  const Tabuleiro4x4({super.key, required this.title});
  final String title;

  @override
  State<Tabuleiro4x4> createState() => _Tabuleiro4x4State();
}

class _Tabuleiro4x4State extends State<Tabuleiro4x4> {
  final List<Celula> _celulas = [];
  final Partida partida = Partida();

  @override
  @mustCallSuper
  void initState() {
    super.initState();

    for (var i = 0; i < 16; i++) {
      _celulas.add(Celula(partida: partida,));
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
            _celulas[3],
          ],
        ),
                Row(
          children: <Widget>[
            _celulas[4],
            _celulas[5],
            _celulas[6],
            _celulas[7],
          ],
        ),
        Row(
          children: <Widget>[
            _celulas[8],
            _celulas[9],
            _celulas[10],
            _celulas[11],
          ],
        ),
        Row(
          children: <Widget>[
            _celulas[12],
            _celulas[13],
            _celulas[14],
            _celulas[15],
          ],
        ),

      ],
    );
  }
}
