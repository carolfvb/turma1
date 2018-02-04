#language: pt

Funcionalidade: Cadastrar cliente

Contexto:
  Dado que eu acesso o site da Casas Bahia
  Quando eu clicar no link "link_cadastre-se"
  E selecionar a "rb_opcao_nao"
  E clicar no botão "botao_continuar_cadastro"

Cenário: Validar Acesso ao Cadastro de Usuario
  Então exibe a tela de cadastro do usuario

@cadastro
Cenario: Cadastar Usuario Novo
  E preencho os campos obrigatorios
  E clicar no botao "botao_salvar_cadastro"
  Entao exibe mensagem de sucesso
