import 'dart:io';

final Map<String, double> baseAlunos = <String, double>{};
cadastraAlunos() {
  stdout.writeln('Entre com o nome do aluno:');
  final nomealuno = stdin.readLineSync().toString();
  stdout.writeln('Entre com a nota do aluno:');
  final notaaluno = stdin.readLineSync().toString();
  baseAlunos[nomealuno] = double.tryParse(notaaluno) ?? 0;
  stdout.writeln('Ja temos ${baseAlunos.length} alunos');

  stdout.writeln('O aluno $nomealuno foi cadastrado com a nota $notaaluno');
}

calculaMedia() {
  //final total = baseAlunos.map((chave, valor) => valor).
  double total = 0;
  baseAlunos.forEach((key, value) {
    total += baseAlunos[key]!;
  });
  final media = total / baseAlunos.length;
  stdout.writeln('A media é $media!');
}

naoIdentificado() {
  stdout.writeln('Não entendi a opção que você deseja!');
}
