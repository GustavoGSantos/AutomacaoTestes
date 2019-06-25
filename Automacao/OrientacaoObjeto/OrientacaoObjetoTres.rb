#Modulo serve para agrupar classes, metodos e constantes
#Modulos não podem ser instanciados diretamente
#Uma classe pode ter varios modulos

module ModuloNome
    
    def methodPadrao
        puts 'Eu sou um módulo'
    end
end

class ClassName
    include ModuloNome
end

objeto = ClassName.new

objeto.methodPadrao

#Polimorfismo
#Instancia varias classes dentro de outras classes

class Cachorro
    def latir
        puts 'Au au au'
    end
end

class CachorroGrande
    def latir
        puts 'Au au'
    end
end

class Pessoa
    def agarraCachorro(cachorro)
        cachorro.latir
    end
end

c1 = Cachorro.new
c2 = CachorroGrande.new

p = Pessoa.new

p.agarraCachorro(c1)
p.agarraCachorro(c2)