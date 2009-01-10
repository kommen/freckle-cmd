
module Freckle

  class Project < ActiveResource::Base
    self.site = "http://#{Freckle::AppConfig.subdomain}.#{Freckle::AppConfig.host}:#{Freckle::AppConfig.port}/api/"

    def self.headers
      @headers ||= { 'X_FRECKLETOKEN' => Freckle::AppConfig.authtoken }
    end

    def self.find_or_create_by_name(name)
      raise "Invalid Argument: Name can't be blank." if name.nil? || name.empty?
      find(:first, :params => { :name => name }) || create(:name => name)
    end
  end
end