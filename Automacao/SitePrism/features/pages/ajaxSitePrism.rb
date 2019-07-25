class AjaxPage < SitePrism::Page
    set_url '/buscaelementos/botoes'
    element :botao, '#teste'
    element :mensagem, '#div1'

    def clicarBotao
        wait_for_botao
        botao.click
    end
end