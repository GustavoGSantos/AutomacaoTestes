Before do
    #Estou sendo executado antes de cada cenário
    @soma = 5 + 5
end

After do
    #Estou sendo executado depois de cada cenário
end

Before '@comeco' do
    #Rodei só onde tinha a tag
end

After '@final' do
    puts 'Rodei só onde tinha a tag'
end

Before '@soma' do
    #Estou sendo executado antes de cada cenário
    @soma = 5 + 5
end
