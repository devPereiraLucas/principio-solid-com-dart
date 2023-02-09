// Os subtipos devem ser substituives pelos seus tipos base

abstract class Conta {
  void depositar(int valor) => print('depositando...');
  void transferir(int valor) => print('transferindo...');
  void realizarEmprestimo() => print('realizando emprestimo');
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

// Contudo estamos tendo um problema com essa substituções, pois conta poupança não deveria implementar os metodos de emprestimo e de tranferencia.

// O principio asseguir(4) irá mostrar a solução para essa implementação acima.
