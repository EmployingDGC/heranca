void main(List<String> arguments) {
  Cachorro cachorro = new Cachorro('pretinha', 6, 6);
  Gato gato = new Gato('Jackie', 0.6);

  print(cachorro);
  print('');
  print(gato);
}

class Animal {
  String nome;
  String som;
  double peso;

  Animal(this.nome, this.peso, this.som);

  void comer() {
    print('${this.nome} comeu');
  }

  void fazerSom() {
    print(this.som);
  }
}

class Cachorro extends Animal {
  int fofura;

  Cachorro(String nome, double peso, this.fofura) : super(nome, peso, 'Au! Au!');

  void brincar() {
    fofura += 10;
    print('Fofura do ${this.nome} aumentou para ${this.fofura}!!!');
  }

  @override
  String toString() => 'Cachorro.\nNome: ${this.nome}\nPeso: ${this.peso}kg\nSom: ${this.som}\nFofura: ${this.fofura}';
}

class Gato extends Animal {
  Gato(String nome, double peso) : super(nome, peso, 'Miau! Miau!');

  @override
  String toString() => 'Gato.\nNome: ${this.nome}\nPeso: ${this.peso}kg\nSom: ${this.som}\nAmigável? ${this.estaAmigavel() ? "Sim" : "Não"}';

  bool estaAmigavel() => true;
}
