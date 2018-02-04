#language: pt

Funcionalidade: Busca de produto
  Como cliente eu quero buscar produto no site da casas bahia


Esquema do Cenário: Busca de produto
  Dado que eu acesso o site da Casas Bahia
  Quando eu pesquiso <produto>
  Então é exibido uma lista de <produto>

  Exemplos:
  | produto |
  | "Geladeira" |
  | "iPhone" |
