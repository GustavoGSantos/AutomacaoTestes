require 'capybara/cucumber'
require 'capybara'
require 'site_prism'
require 'selenium-webdriver'
require_relative 'pageHelper.rb'

BROWSER = ENV['BROWSER']
AMBIENTE = ENV['AMBIENTE']
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/Ambientes/#{AMBIENTE}.yml")

World(PageObjects)

Capybara.register_driver :selenium do |app|
    if BROWSER.eql?('chrome')
        Capybara::Selenium::Driver.new(app, :browser => :chrome)
    elsif BROWSER.eql?('chrome_headless')
        Capybara::Selenium::Driver.new(app, :browser => :chrome, 
        desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome('chromeOptions' => {'args' => ['--headless', 'disable-gpu']})
        )
    end
end
    #elsif BROWSER.eql?('firefox')
    #    Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette => true)
    #elsif BROWSER.eql?('ie')
    #    Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
    #elsif BROWSER.eql?('safari')
    #    Capybara::Selenium::Driver.new(app, :browser => :safari)
    #elsif BROWSER.eql?('poltergeist')
    #    options = {js_errors: false}
    #    Capybara::Poltergeist::Driver.new(app, options)

Capybara.configure do |config|
    #selenium selenium_chrome selenium_chrome_headless(para rodar no jnekins, roda sem browser)
    config.default_driver = :selenium #Configurando driver
    config.app_host = CONFIG['urlPadrao'] #Configurando url padrão
    config.default_max_wait_time = 5 #Tempo de espera padrão
    Capybara.page.driver.browser.manage.window.maximize
end