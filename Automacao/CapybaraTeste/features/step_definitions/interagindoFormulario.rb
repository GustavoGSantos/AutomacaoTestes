Quando("eu faço cadastro") do
    visit '/users/new'
    fill_in(id: 'user_name', with: 'Gustavo')
    find('#user_lastname').set('Gimenez')
    find('#user_email').send_keys('gustavogimenez.santos@gmail.com')
    fill_in(id: 'user_address', with: 'Rua hum')
    find('#user_university').set('Universidade Paulista')
    find('#user_profile').send_keys('QA')
    fill_in(id: 'user_gender', with: 'Masculino')
    find('#user_age').set('21')
    find('input[value="Criar"]').click
end
  
Então("verifico se fui cadastrado") do
    texto = find('#notice')
    expect(texto.text).to eq 'Usuário Criado com sucesso'
end  