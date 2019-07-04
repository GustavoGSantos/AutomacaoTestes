Quando("Seleciono o mouse hover") do
    visit '/iteracoes/mousehover'
    find('.activator').hover.click
    #find('.activator').hover
    sleep(4)
end  