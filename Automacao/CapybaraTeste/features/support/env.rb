require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.configure do |config|
    #selenium selenium_chrome selenium_chrome_headless(para rodar no jnekins, roda sem browser)
    config.default_driver = :selenium_chrome #Configurando driver
    config.app_host = 'https://automacaocombatista.herokuapp.com' #Configurando url padrão
    config.default_max_wait_time = 5 #Tempo de espera padrão
    Capybara.page.driver.browser.manage.window.maximize
end