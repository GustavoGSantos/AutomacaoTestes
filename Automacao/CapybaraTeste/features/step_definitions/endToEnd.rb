Quando("eu cadastro um usuário") do
    visit '/users/new'
    fill_in(id: 'user_name', with: 'Gustavo')
    find('#user_lastname').set('Gimenez')
    find('#user_email').send_keys('gustavogimenez.santos@gmail.com')
    find('input[value="Criar"]').click
end
  
Então("verifico se o usuário foi cadastrado") do
    texto = find('#notice')
    expect(texto.text).to eq 'Usuário Criado com sucesso'
    sleep(4)
end
  
Quando("edito um usuário") do
    find('.waves-light.blue').click
    fill_in(id: 'user_name', with: 'José')
    find('#user_lastname').set('Silva')
    find('input[value="Criar"]').click
end
  
Então("verifico se o usuário foi editado") do
    texto = find('#notice')
    expect(texto.text).to eq 'Seu Usuário foi Atualizado!'
    sleep(4)
end  