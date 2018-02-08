class PaginaCommon
    include RSpec::Matchers
    include Capybara::DSL

  def clicar_elemento(elemento, index=0)
    all(EL[elemento],wait:10)[index.to_i].click
  end

end
