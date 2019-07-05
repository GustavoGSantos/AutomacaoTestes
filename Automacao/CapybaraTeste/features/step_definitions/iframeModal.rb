Quando("entro no iframe e preencho os campos") do
    visit '/mudancadefoco/iframe'
    #Alterando o foco para dentro o iframe
    within_frame('id_do_iframe') do
        #Ações que serão realizadas dentro o iframe
        fill_in(id: 'first_name', with: 'Gustavo')
        fill_in(id: 'last_name', with: 'Gimenez')
        sleep(4)
        end
end

Quando("entro no modal e verifico o texto") do
    visit '/mudancadefoco/modal'
    find('.modal-trigger').click
    within('#modal1') do
        page.has_text?('Modal Teste')
    end
end
  
Quando("fecho o modal") do
    find('.modal-close').click
end  