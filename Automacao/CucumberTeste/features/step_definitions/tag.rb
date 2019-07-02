Quando("eu tenho {int} balas") do |valor1|
     @balas = valor1
end
  
Quando("divido por {int} amigos") do |valor2|
     @resultado = @balas / valor2
end
  
Então("verifico com quantas balas eu fico") do
     expect(@resultado).to eq 5
end
  
Quando("meus {int} amigos tem a mesma quantidade") do |valor3|
     @resultado = @balas * valor3
end
  
Então("verifico quantas balas nos temos") do
     expect(@resultado).to eq 20
end  