#Concatenação
#Pode ser usado o + ou <<

variavel = 'Gustavo'

puts 'Olá ' + variavel 
puts 'Olá ' << variavel

#Concatenando variáveis de tipos diferentes
#Deve-se usar "" e para indicar que se trata de uma variável #{NOME_VARIAVEL}

variavel_string = 'Total'
variavel_float = 2

puts "#{variavel_string} é #{variavel_float}"
puts "#{variavel_string}" + " #{variavel_float}"