class User < SitePrism::Page
    set_url 'users/new'
    element :nome, '#user_name'
    element :sobrenome, '#user_lastname'
    element :email, '#user_email'
    element :endereco, '#user_address'
    element :universidade, '#user_university'
    element :profissao, '#user_profile'
    element :genero, '#user_gender'
    element :idade, '#user_age'
    element :criar, 'input[value="Criar"]'

    def preencherUsuario
        nome.set 'Gustavo'
        sobrenome.set 'Gimenez'
        email.set 'teste@exemplo.com'
        endereco.set 'Rua hum'
        universidade.set 'UNIP'
        profissao.set 'Analista'
        genero.set 'Masculino'
        idade.set '21'
        criar.click
    end
end