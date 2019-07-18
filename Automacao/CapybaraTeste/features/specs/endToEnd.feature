#language: pt

@endToEnd
Funcionalidade: Teste end to end

Cenario: Cadastrar usuário
Quando eu cadastro um usuário
Então verifico se o usuário foi cadastrado

Cenario: Editar usuário
Quando edito um usuário
Então verifico se o usuário foi editado