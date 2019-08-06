Quando("preencho o formulário") do
    @mapeando = MapeandoElementos.new
    @mapeando.load

    @mapeando.preencher
end