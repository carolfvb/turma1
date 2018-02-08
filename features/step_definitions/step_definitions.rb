Dado(/^que eu acesso o site "([^"]*)"$/) do |site|
  visit(site)
end

Quando(/^eu pesquiso "([^"]*)"$/) do |produto|
  PaginaHome.new.pesquisa_produto(produto)
end

Então(/^é exibido uma lista de "([^"]*)"$/) do |mensagem|
  PaginaAssert.new.valida_pesquisa_produto(mensagem)
end

Quando(/^eu clicar no link "([^"]*)"$/) do |link|
  #find(EL[link], wait: 10).click
  PaginaCommon.new.clicar_elemento(link)
end

Quando(/^selecionar a "([^"]*)"$/) do |nao|
  PaginaCommon.new.clicar_elemento(nao)
  #find(EL[nao], wait: 10).click
end

Quando(/^clicar no botao "([^"]*)"$/) do |continuar|
  #find(EL[continuar], wait: 10).click
  PaginaCommon.new.clicar_elemento(continuar)
end

Então(/^exibe a tela de "([^"]*)"$/) do |tela|
  PaginaAssert.new.valida_exibicao_pagina(tela)
end

Quando(/^preencho os campos obrigatorios com dados "([^"]*)"$/) do |massa|
  PaginaCadastro.new.send("preencher_cadastro_#{massa}")
end

Quando(/^clicar no botao salvar$/) do
  PaginaCadastro.new.clicar_continuar_cadastro
end
