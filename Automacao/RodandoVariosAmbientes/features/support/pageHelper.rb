Dir[File.join(File.dirname(__FILE__), '../pages/*Page.rb')].each {|file| require file}

module PageObjects
    def home
        @home ||= MapeandoElementos.new    
    end
end