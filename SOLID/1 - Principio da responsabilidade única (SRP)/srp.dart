/* 

Uma classe deve ter apenas um motivo para mudar.
Sua responsabilidade é sempre em cima de apenas um ator (core).

*/

class ContaCorrente {
  contaCorrenteExiste() {
    // Logica crucial para esta classe
    print('conta existe');
  }

  salvarModificacoes() {
    print('salvando modificações no db...');
  }
}

//Devemos separar cada responsabilidade para sua regra de negocio, uma classe que faz A não deve fazer B.

class ContaCorrenteRepository {
  void save() => print('salvando no db...');
}

class ContaCorrente2 {
  ContaCorrenteRepository _repository = new ContaCorrenteRepository();

  contaCorrenteExiste() {
    // Logica crucial para esta classe
    print('conta existe');
  }

  salvarModificacoes() {
    _repository.save();
  }
}
