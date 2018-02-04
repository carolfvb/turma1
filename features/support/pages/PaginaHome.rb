class PaginaHome
    include RSpec::Matchers
    include Capybara::DSL

  def pesquisa_produto(produto)
    find(EL['texto_buscar_pagina_inicial'], wait: 10).set(produto)
    find(EL['botao_buscar_pagina_inicial'], wait: 10).click

  end


end
