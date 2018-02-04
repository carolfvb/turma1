Dado(/^que eu acesso o site da Casas Bahia$/) do
  visit('https://www.casasbahia.com.br')
end

Quando(/^eu pesquiso "([^"]*)"$/) do |arg1|
  PaginaHome.new.pesquisa_produto(arg1)
end

Então(/^é exibido uma lista de "([^"]*)"$/) do |menssagem|
    textoResultado = (all('.name.fn')[0]).text
    if textoResultado.include?(menssagem)
      p "sucesso"
    else
      raise "texto não encontrado"
    end
end

Quando(/^eu clicar no link "([^"]*)"$/) do |link|
  find(EL[link], wait: 10).click
end

Quando(/^selecionar a "([^"]*)"$/) do |nao|
  find(EL[nao], wait: 10).click
end

Quando(/^clicar no botão "([^"]*)"$/) do |continuar|
  find(EL[continuar], wait: 10).click
end

Então(/^exibe a tela de cadastro do usuario$/) do
  assert_selector(EL['titulo_identificacao'])
end



Quando(/^preencho os campos obrigatorios$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando(/^clicar no botao salvar$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Entao(/^exibe mensagem de sucesso$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
