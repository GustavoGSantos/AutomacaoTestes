Dir[File.join(File.dirname(__FILE__), '../pages/*SitePrism.rb')].each {|file| require file}

module PageObjects
    def home
        @home ||= MapeandoElementosUp.new    
    end
end