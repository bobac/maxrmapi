class InitializerGenerator < Rails::Generators::Base
  def create_initializer_file
    create_file "config/initializers/maxrm_init.rb", "$maxrm_host = '' # Add your dashboard URL here without https://, e.g. wwweurope1.systemmonitor.eu.com"
  end
end