Quando("Seleciono o mouse hover") do
    visit '/iteracoes/mousehover'
    #find('.card-content').hover.click
    find('.card-content').hover
    sleep(4)
end  