# language: pt
Funcionalidade: Batendo na API com CEP válido
  Esquema do Cenário: API batendo com CEP válido
    Quando inserir <CEP> na API
    Então valido o retorno dos campos


    Exemplos:
      | CEP      |
      | 4282030 |

  Esquema do Cenário: API batendo com CEP inválido
    Quando inserir <CEP> na API
    Então valido a mensagem de erro


    Exemplos:
      | CEP     |
      | 0000000 |
      | 1293081 |
      | 9892382 |
      | 9128109 |