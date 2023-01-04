import 'package:alunos/alunos.dart' as alunos;
import 'dart:io';

void main(List<String> arguments) {
  String entrada = '';
  while (entrada != '0') {
    stdout.writeln("Digite o que deseja : ");
    stdout.writeln("1 para novos alunos  ");
    stdout.writeln("2 para a media da turma  ");
    stdout.writeln("0 para sair do aplicativo  ");
    entrada = stdin.readLineSync().toString();
    switch (entrada) {
      case '1':
        alunos.cadastraAlunos();
        break;
      case '2':
        alunos.calculaMedia();
        break;
      case '0':
        break;
      default:
        alunos.naoIdentificado();
    }
    //se entrada =1
    // chama cadastro de usuarios
    //se entrada = 2
    // mostra media de alunos
    //senao
    // fala que nao entendeu o inserido
    // se 0, sai do aplicativo

    //stdout.write(entrada);
  }
}
