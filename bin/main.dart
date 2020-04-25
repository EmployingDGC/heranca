void main(List<String> arguments) {
  print('Hello world!');
}


class Cachorro {
  String nome;
  double peso;
  int fofura;

  void comer() {
    print('${this.nome} comeu');
  }

  void latir() {
    print('Au! Au!');
  }

  void brincar() {
    fofura += 10;
    print('Fofura do ${this.nome} aumentou para ${this.fofura}!!!');
  }
}

class Gato {
  String nome;
  double peso;

  void comer() {
    print('${this.nome} comeu');
  }

  void miar() {
    print('Miau! Miau!');
  }

  bool estaAmigavel() => true;
}
