class ClassName

    #Equivalente ao get set Java
    attr_accessor: nome

    #attr_reader: nomeum

    #attr_writer: nomedois

=begin
    #Get
    def nome
        @nome
    end

    #Set
    def nome(nome)
        @nome = :nome
    end
=end

def method_name
    #Corpo do metodo
end

end

#Herança herda os métodos da classe ClassName
class heranca < ClassName
end

objeto = ClassName.new

objeto.nome = ""