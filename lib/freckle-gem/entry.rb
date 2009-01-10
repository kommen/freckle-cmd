
module FreckleGem

  class Entry < ActiveResource::Base
    self.site = "http://#{Freckle::AppConfig.subdomain}.#{Freckle::AppConfig.host}:#{Freckle::AppConfig.port}/api/"

    attr_accessor :project

    def self.headers
      @headers ||= { 'X_FRECKLETOKEN' => Freckle::AppConfig.authtoken }
    end

    def attributes
      { :date => Date.today, :project_id => project ? project.id : nil }.merge(@attributes || {})
    end

    def project_name=(name)
      self.project = Project.find_or_create_by_name(name)
    end
  end
end