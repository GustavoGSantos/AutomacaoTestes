Dado("que eu estou na tela de dragdrop") do
    visit '/iteracoes/draganddrop'
end
  
Quando("movo o dragdrop") do
    @primeiroElemento = find('#winston')
    @segundoElemento = find('#dropzone')

    @primeiroElemento.drag_to(@segundoElemento)
    sleep(3)
end  