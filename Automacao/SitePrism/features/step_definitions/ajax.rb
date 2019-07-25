Quando("clico no botão") do
    @ajax = AjaxPage.new
    @ajax.load

    @ajax.clicarBotao
    sleep(2)
end
  
Então("verifico se apareceu") do
    @ajax.wait_for_mensagem
    expect(@ajax.mensagem.text).to eq 'Você Clicou no Botão!'
end  