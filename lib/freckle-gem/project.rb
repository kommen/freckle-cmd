require 'json'

module FreckleGem

  class Project < ActiveResource::Base
    self.site = "http://#{Freckle::AppConfig.subdomain}.#{Freckle::AppConfig.host}:#{Freckle::AppConfig.port}/api/"

    def self.headers
      @headers ||= { 'X_FRECKLETOKEN' => Freckle::AppConfig.authtoken }
    end
  end
end