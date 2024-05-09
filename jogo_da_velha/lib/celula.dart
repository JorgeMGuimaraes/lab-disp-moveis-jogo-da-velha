import 'package:flutter/material.dart';
import 'package:jogo_da_velha/constants.dart';
import 'package:jogo_da_velha/jogador.dart';
import 'package:jogo_da_velha/partida.dart';

class Celula extends StatefulWidget {
  const Celula({super.key, required this.partida});

  final Partida partida;

  @override
  State<Celula> createState() => _CelulaState();
}

class DadosCelula {
  String imagem = Constants.imgVazio;
  bool habilitado = true;
  Jogador jogador = Jogador.vazio;
}

class _CelulaState extends State<Celula> {
  final DadosCelula _dados = DadosCelula();

  void _atualizarCelula() {
    if (!_dados.habilitado) {
      return;
    }
    setState(() {
      _dados.imagem = widget.partida.jogadorCorrente == Jogador.o
          ? Constants.imgO
          : Constants.imgX;
      _dados.habilitado = false;
      _dados.jogador = widget.partida.jogadorCorrente;
      widget.partida.trocarJogador();
    });
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Constants.paddingCelula),
      color: Colors.black,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const ContinuousRectangleBorder(),
          padding: EdgeInsets.zero,
        ),
        onPressed: () => _atualizarCelula(),
        child: Image.asset(_dados.imagem),
      ),
    );
  }
}
