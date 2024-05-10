import 'package:jogo_da_velha/jogador.dart';

class Partida {
  Jogador jogadorCorrente = Jogador.vazio;
  Jogador escolhaJogador = Jogador.vazio;
  String nomeJogador = 'Jogador';
  String nomeCorrente = '';

  void trocarJogador() {
    if (jogadorCorrente == Jogador.vazio) {
      jogadorCorrente = Jogador.x;
    } else if (jogadorCorrente == Jogador.x) {
      jogadorCorrente = Jogador.o;
    } else {
      jogadorCorrente = Jogador.x;
    }
  }
}
