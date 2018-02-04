class PaginaCadastro
    include RSpec::Matchers
    include Capybara::DSL

  def preencher_cadastro()
    find(EL['texto_buscar_pagina_inicial'], wait: 10).set(produto)
    find(EL['botao_buscar_pagina_inicial'], wait: 10).click

  end
end
