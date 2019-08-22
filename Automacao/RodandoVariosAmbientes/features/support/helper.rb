module Helper
    def tirarFoto(nomeArquivo, resultado)
        caminhoArquivo = "results/screenshots/test#{resultado}"
        foto = "#{caminhoArquivo}/#{nomeArquivo}.png"
        page.save_screenshot(foto)
        embed(foto, 'image/png', 'Clique aqui')
    end
end