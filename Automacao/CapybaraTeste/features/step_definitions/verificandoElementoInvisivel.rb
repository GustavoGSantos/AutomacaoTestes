Quando("clico no botão outra vez") do
    visit '/buscaelementos/botoes'
    find('#teste').click
    sleep(4)
end
  
Então("verifico se o texto desapareceu na tela com sucesso") do
    page.assert_text(text, 'Você Clicou no Botão!')
    page.has_text?('Você Clicou no Botão!')
    have_text('Você Clicou no Botão!')
    @texto = find('#div1')
    expect(@texto.text).to eq 'Você Clicou no Botão!'
    sleep(4)
    find('#teste').click
    assert_no_text(text, 'Você Clicou no Botão!')
    has_no_text?('Você Clicou no Botão!')
    sleep(4)
end  