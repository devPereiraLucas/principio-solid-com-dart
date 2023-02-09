// O principio 2 diz que a classe deve estar ABERTA a enxtersões e FECHADA para modificações.

class Pagamento {
  void pagarBoleto() => print('Pagar boleto');
  void pagarImposto() => print('Pagar imposto');
}

/* 

E se precisarmos adicionar um novo tipo de pagamento? desta forma a classe acima esta sujeita a modificações,
já que teremos que implementar um novo metodo na mesma classe.

*/

abstract class Pagamento2 {
  int valor = 20;
  void pagar(Enum typeOfPayament);
}

// Na utilização de extends reutilizamos o valor
class PagamentoBoleto extends Pagamento2 {
  @override
  void pagar(Enum typeOfPayament) {
    print('Pagando boleto no valor...$valor');
  }
}

// Na herança re-implementamos o valor
class PagamentoImposto implements Pagamento2 {
  @override
  int valor = 15;

  @override
  void pagar(Enum typeOfPayament) {
    print('Pagando imposto no valor de... $valor');
  }
}

// Nova forma de pagamento
class PagamentoCartao extends Pagamento2 {
  @override
  void pagar(Enum typeOfPayament) {
    print('Pagando cartao no valor...$valor');
  }
}
