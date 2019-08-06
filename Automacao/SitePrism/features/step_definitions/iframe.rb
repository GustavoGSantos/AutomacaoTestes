Quando("preencho os campos") do
    @paginaIframe = PaginaPadrao.new
    @paginaIframe.load

    @paginaIframe.preencherCampos do |iframe|
        iframe.nome.set 'Gustavo'
        iframe.sobrenome.set 'Santos'
        sleep(2)
    end
end  