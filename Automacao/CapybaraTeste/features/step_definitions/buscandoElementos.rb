Quando("acesso a url de botões") do
    visit '/buscaelementos/botoes'
end
  
Então("verifico se encontrei os elementos") do
    #all busca todos os elementos que contenham o all
    page.all(:css, '.btn')
    #Busca elemento mapeado
    find('#teste')
    find_by_id('teste')
    find_button(class: 'btn waves-light')
    first('.btn')
    find_link(href: 'https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA')
end  