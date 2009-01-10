require 'json'
require 'activeresource'

module FreckleGem

  class Entry < ActiveResource::Base
    self.site = "http://#{Freckle::AppConfig.subdomain}.#{Freckle::AppConfig.host}:#{Freckle::AppConfig.port}/api/"

    def self.headers
      @headers ||= { 'X_FRECKLETOKEN' => Freckle::AppConfig.authtoken }
    end

    def attributes
      { :date => Date.today }.merge(@attributes || {})
    end

  end
end