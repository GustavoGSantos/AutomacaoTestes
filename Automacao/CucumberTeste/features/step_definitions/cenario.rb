Dado("eu tenho {int} laranjas.") do |valor1|
    @laranjas = valor1
end
  
Quando("eu como {int} laranjas.") do |valor2|
    @comer = valor2
    @subtracao = @laranjas - @comer
end
  
Então("eu vejo quantas laranjas sobraram.") do
    expect(@subtracao).to eq 8
end

#Como o Dado já foi declarado acima, quando o comando cucumber foi rodado
#Não foi criado outro método, ele foi apenas reutilizado

Quando("eu compro {int} laranjas.") do |valor3|
    @compro = valor3
    @soma = @laranjas + @compro
end
  
Então("eu vejo quantas laranjas eu tenho.") do
    expect(@soma).to eq 15
end  