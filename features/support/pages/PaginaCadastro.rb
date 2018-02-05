class PaginaCadastro
    include RSpec::Matchers
    include Capybara::DSL

  def preencher_cadastro_fisica()
    valor = CADASTRO[:fisica]
    find(EL['rb_pessoa_fisica']).click
    find(EL['texto_nome_completo']).set(valor[:nome])
    find(EL['texto_cpf']).set(eval(MASSA['cpf']))
    find(EL['selecao_telefone1_residencial']).find(:option, valor[:tipo_telefone1]).select_option
    find(EL['texto_ddd1_residencial']).set(valor[:numero_ddd_tel1])
    find(EL['telefone_residencial']).set(valor[:numero_tel1])
    find(EL['data_nasc_dia']).set(valor[:data_nascimento][0])
    find(EL['data_nasc_mes']).set(valor[:data_nascimento][1])
    find(EL['data_nasc_ano']).set(valor[:data_nascimento][2])
      if valor[:sexo] == 'M'
        find(EL['seleciona_sexo_m']).click
      else
        find(EL['seleciona_sexo_f']).click
      end
    find(EL['email']).set(valor[:email])
    find(EL['confirma_email']).set(valor[:email])
    find(EL['senha']).set(valor[:senha])
    find(EL['confirma_senha']).set(valor[:confirmar_senha])

  end

  def preencher_cadastro_juridica()
    valor = CADASTRO[:juridica]
    find(EL['rb_pessoa_juridica']).click
    find(EL['texto_razao_social']).set(valor[:nome])
    find(EL['texto_nome_fantasia']).set(valor[:nome])
    find(EL['texto_cnpj']).set(valor[:cnpj])
    find(EL['selecao_estado']).find(:option, valor[:sede_inscricao_estadual]).select_option
    find(EL['texto_inscricao_estadual']).set(valor[:inscricao_estadual])
    find(EL['selecao_telefone1_residencial']).find(:option, valor[:tipo_telefone1]).select_option
    find(EL['texto_ddd_pj']).set(valor[:numero_ddd_tel1])
    find(EL['texto_telefone_pj']).set(valor[:numero_tel1])
    find(EL['link_remover_telefone2']).click
    find(EL['email']).set(valor[:email])
    find(EL['confirma_email']).set(valor[:email])
    find(EL['senha']).set(valor[:senha])
    find(EL['confirma_senha']).set(valor[:confirmar_senha])

  end

  def clicar_continuar_cadastro
    find(EL['botao_cadastro_continuar']).click
  end
end
