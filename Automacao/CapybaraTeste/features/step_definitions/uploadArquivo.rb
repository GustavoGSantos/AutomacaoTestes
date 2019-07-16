Quando("eu faço um upload de arquivo") do
    visit '/outros/uploaddearquivos'
    #attach_file('upload', '/home/gustavo/Área de Trabalho/Automacao/Automacao/CapybaraTeste/features/download.jpeg', make_visible: true)
    
    @foto = File.join(Dir.pwd, 'features/download.jpeg')
    attach_file('upload', @foto, make_visible: true)
    sleep(3)
end  