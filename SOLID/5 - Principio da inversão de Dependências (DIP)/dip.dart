// Depender de abstração e não e classe concreta

class PagamentoRepository {
  void save() => print('Salvando pagamento');
}

class ContaCorrente {
  // ignore: unused_field
  late PagamentoRepository _repository;

  ContaCorrente() {
    _repository = new PagamentoRepository();
  }

  void executarAlgumaLogica() {
    _repository.save();
  }
}

/* 

Na linha 12 estamos dependendo de uma classe concreta, se querermos fazer um mock por exemplo do repository não é possivel.

Solução: Vamos inverter a responsabilidade, deixar que quem chama a conta corrente resolva a dependencia do repository

*/

abstract class IPagamentoRepository {
  void save();
}

class PagamentoRepositoryImp implements IPagamentoRepository {
  @override
  void save() {
    print('Metodo save da implementação...');
  }
}

class PagamentoRepositoryMock implements IPagamentoRepository {
  @override
  void save() {
    print('Metodo save do mock...');
  }
}

class ContaCorrente2 {
  late IPagamentoRepository _repository;

  ContaCorrente2(IPagamentoRepository repository) {
    _repository = repository;
  }

  void executarAlgumaLogica() {
    _repository.save();
  }
}

void main(List<String> args) {
  ContaCorrente2 conta = ContaCorrente2(PagamentoRepositoryImp());
  conta.executarAlgumaLogica();
  conta = ContaCorrente2(PagamentoRepositoryMock());
  conta.executarAlgumaLogica();
}
