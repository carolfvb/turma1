class PaginaAssert
    include RSpec::Matchers
    include Capybara::DSL

    def valida_pesquisa_produto(produto)
      textoResultado = (all('.name.fn')[0]).text
      if textoResultado.include?(produto)
        p "sucesso"
      else
        raise "texto não encontrado"
      end
    end

    def valida_exibicao_pagina(tela)
      
      assert_selector(EL[tela], wait:10)
    end

  end
