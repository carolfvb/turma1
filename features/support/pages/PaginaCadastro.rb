class PaginaCadastro
    include RSpec::Matchers
    include Capybara::DSL

  def preencher_cadastro_fisica()

    assert_selector(EL['rb_pessoa_fisica'])
    find(EL['rb_pessoa_fisica']).click
    valor = CADASTRO[:fisica]
    campo = [EL['texto_nome_completo'],EL['texto_cpf'],EL['texto_ddd1_residencial'],EL['telefone_residencial'],
    EL['data_nasc_dia'],EL['data_nasc_mes'],EL['data_nasc_ano'],EL['email'],EL['confirma_email'],EL['senha'],EL['confirma_senha']]

    dados = [valor[:nome],valor[:cpf],valor[:numero_ddd_tel1],valor[:numero_tel1],valor[:data_nascimento][0],valor[:data_nascimento][1],valor[:data_nascimento][2],
    valor[:email],valor[:email],valor[:senha],valor[:senha]]

    valor = Hash[campo.zip(dados)]

    valor.each do |campo, dados|
      find(campo).set(dados)
    end

    find(EL['selecao_telefone1_residencial']).all(:option, valor[:tipo_telefone1])[0].select_option

      if valor[:sexo] == 'M'
        find(EL['seleciona_sexo_m']).click
      else
        find(EL['seleciona_sexo_f']).click
      end
  end

  def preencher_cadastro_juridica()
    assert_selector(EL['rb_pessoa_juridica'])
    valor = CADASTRO[:juridica]
    find(EL['rb_pessoa_juridica']).click
    campo = [EL['texto_razao_social'],EL['texto_nome_fantasia'],EL['texto_cnpj'],EL['texto_inscricao_estadual'],
            EL['texto_ddd_pj'],EL['texto_telefone_pj'],EL['email'],EL['confirma_email'],EL['senha'],EL['confirma_senha']]
    dados = [valor[:nome], valor[:nome], valor[:cnpj], valor[:inscricao_estadual], valor[:numero_ddd_tel1],
            valor[:numero_tel1], valor[:email], valor[:email], valor[:senha], valor[:senha]]
    valor = Hash[campo.zip(dados)]

    valor.each do |campo,dados|
      find(campo).set(dados)
    end

    find(EL['selecao_estado']).all(:option, valor[:sede_inscricao_estadual])[0].select_option
    find(EL['selecao_telefone1_residencial']).all(:option, valor[:tipo_telefone1])[0].select_option
    find(EL['link_remover_telefone2']).click
  end

  def clicar_continuar_cadastro
    find(EL['botao_cadastro_continuar']).click
  end

end
