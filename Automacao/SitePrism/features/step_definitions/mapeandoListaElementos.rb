Quando("mapeio uma tabela") do
    @listaElementos = MapeandoListas.new
    @listaElementos.load

    #puts @listaElementos.lista[3].text
    #puts @listaElementos.lista.size

    expect(@listaElementos.lista.size).to eq 24

    @listaElementos.lista.each do |listas|
        puts listas.text
    end
end  