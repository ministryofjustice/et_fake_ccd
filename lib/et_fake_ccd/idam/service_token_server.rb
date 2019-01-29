require 'sinatra/base'
module EtFakeCcd
  module Idam
    class ServiceTokenServer < Sinatra::Base
      post '/testing-support/lease' do
        content_type "text/plain"
        "eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJldCIsImV4cCI6MTU0ODI2OTc5M30.DK24X4qNav3bAeIqPlcI7OQG6oRUDkBhCx1Syn2blqYrdXjQE3NGllC6unJlpiXymsf1rFHpZyYE3L7KgN-k8w"
      end
    end
  end
end
