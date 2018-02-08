#language: pt

Funcionalidade: Cadastrar cliente

Contexto:
  Dado que eu acesso o site "https://www.casasbahia.com.br"
  Quando eu clicar no link "link_cadastre-se"
  E selecionar a "rb_opcao_nao"
  E clicar no botao "botao_continuar_cadastro"

Cenário: Validar Acesso ao Cadastro de Usuario
  Então exibe a tela de "cadastro_do_usuario"

@cadastro
Esquema do Cenario: Cadastro
  E preencho os campos obrigatorios com dados <tipo_cliente>
  E clicar no botao "botao_salvar_cadastro"
  Então exibe a tela de "usuario_logado"

Exemplos:
| tipo_cliente |
|   "fisica"   |
|   "juridica" |
