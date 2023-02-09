// Interfaces especificas são melhores que uma unica interface geral

abstract class Conta {
  void depositar(int valor);
  void transferir(int valor);
  void realizarEmprestimo();
}

class ContaCorrente implements Conta {
  @override
  void depositar(int valor) {
    print('realizando deposito...');
  }

  @override
  void realizarEmprestimo() {
    print('Emprestimo em processamento...');
  }

  @override
  void transferir(int valor) {
    print('Transferindo valor...');
  }
}

class ContaPoupanca implements Conta {
  @override
  void depositar(int valor) {
    print('realizando deposito...');
  }

  @override
  void realizarEmprestimo() {
    throw Exception('Conta poupança não pode fazer empréstimo');
  }

  @override
  void transferir(int valor) {
    throw Exception('Conta poupança não pode fazer tranferencia');
  }
}

/* 

Estamos implementando a conta, porem a conta oferece muitos metodos que não precisamos, com isso precisamos retornar um exception
e isso não é uma pratica correta

*/

abstract class Conta2 {
  void depositar(int valor);
}

abstract class ServicosDeConta {
  void transferir(int valor);
  void realizarEmprestimo();
}

class ContaCorrente2 extends Conta2 implements ServicosDeConta {
  @override
  void depositar(int valor) {
    print('Depositando...');
  }

  @override
  void realizarEmprestimo() {
    print('Realizando emprestimo...');
  }

  @override
  void transferir(int valor) {
    print('Fazendo emprestimo');
  }
}

class ContaPoupanca2 extends Conta2 {
  @override
  void depositar(int valor) {
    print('Realizando deposito');
  }
}

class ContaConjunto extends Conta2 {
  @override
  void depositar(int valor) {
    print('Realizando deposito');
  }
}
