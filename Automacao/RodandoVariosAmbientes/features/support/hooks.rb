After do |scenario|
    scenarioName = scenario.name.gsub(/\s+/,'_').tr('/','_')
    if scenario.failed?
        tirarFoto(scenarioName.downcase!, 'Falhou')
    else
        tirarFoto(scenarioName.downcase!, 'Passou')
    end
end