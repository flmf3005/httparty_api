#language: pt
@vr
Funcionalidade: Obter ENUMs através da API

Cenário: Verificar key e imprimir aleatoriamente um dos resultados
  Dado o endereço da API para buscar os ENUMs
  Quando realizar uma requisição get
  Então iremos verificar se a chave existe
    E imprimir um dos resultados aleatoriamente