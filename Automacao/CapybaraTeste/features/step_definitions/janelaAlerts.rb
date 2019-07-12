Quando("eu entro na janela e verifico a mensagem") do
    visit '/mudancadefoco/janela'
    janela = window_opened_by do
        click_link 'Clique aqui'
    end
    within_window janela do
        expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
        @mensagem = find('.text-darken-1')
        expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'
        janela.close
    end

    #Segunda opção
    click_link 'Clique aqui'
    switch_to_window windows.last
    expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
    @mensagem = find('.text-darken-1')
    expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'
    windows.last.close
end
  
Quando("eu entro no alert e verifico faco a acao") do
    
end  