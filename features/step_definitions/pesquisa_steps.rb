Dado('que estou na página inicial do Blog do Agi') do
    visit "/"
    page.driver.browser.manage.window.maximize
    find("#search-open").click
  end
  
  Quando('eu digitar {string} na barra de pesquisa') do |comprar_online|
    find(".search-field").set comprar_online
  end
  
  Quando('eu clicar no botão de pesquisa') do
    find(".search-submit").click
  end
  
  Então('devo ver uma lista de artigos relacionados a {string}') do |comprar_online|
    expect(page).to have_text comprar_online
  end

  Então('devo ver uma mensagem informando que {string}') do |nenhum_resultado|
    expect(page).to have_text 'Nenhum resultado'
  end
  
  Então('a lista de artigos deve estar vazia') do
    expect(page).to have_text "Não encontramos nada para estes termos de busca. Tente novamente com palavras-chave diferentes."
  end