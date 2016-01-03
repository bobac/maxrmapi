require "maxrmapi/version"
require 'rexml/document'

module Maxrmapi
  # initialize $maxrm_host in your rails appliaction in initializers/maxrm_init.rb with e.g.
  # $maxrm_host = "wwweurope1.systemmonitor.eu.com"
  # or whatever your dasboard resides in
  $maxrm_host = "host.goes.here"
  
  # returns XML document for particular service e.g.:
  #   get_maxrm_xml('list_clients')
  # if additional parameters are needed, just call with a hash e.g.:
  #   get_maxrm_xml('list_devices_at_client', :clientid => 2323, :devicetype => "server")
  def self.get_maxrm_xml(service, additional_params = {})
    maxrm_api_key = Rails.application.secrets.maxrm_api_key
    url_string = ""
    additional_params.each do |k,v|
      url_string += "&#{k}=#{v}"
    end
  
    endpoint = Net::HTTP.new($maxrm_host, 443)
    endpoint.use_ssl = true
    response = endpoint.post("/api/", "apikey=#{maxrm_api_key}&service=#{service}#{url_string}")
    REXML::Document.new(response.body)
  end
  
end
