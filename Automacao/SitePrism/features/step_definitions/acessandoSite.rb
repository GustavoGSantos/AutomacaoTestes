Quando("acesso a url") do
    @home = Home.new
    @home.load
    sleep(3)
end
  
Então("verifico se estou na página inicial") do
   expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home', url:true)
   sleep(3)
end
  