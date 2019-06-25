#Overriding

class ClassMae

    def correr
        puts 'Mãe Corre'
    end
end

class ClassFilha < ClassMae
    
    def correr
        puts 'Filha corre'
    end
end

objeto = ClassFilha.new

objeto.correr

#Super

class ClassCachorro

    def persegue
        puts 'Cachorro corre atrás do gato'
    end
end

class ClassGato < ClassCachorro
    
    def persegue
        puts super
        puts 'Cansou de correr'
    end
end

objeto = ClassGato.new

objeto.persegue