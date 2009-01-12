
module Freckle

  class Entry < ActiveResource::Base
    self.site = "http://#{Freckle::AppConfig.subdomain}.#{Freckle::AppConfig.host}:#{Freckle::AppConfig.port}/api/"

    TIME_REGEXP = /^[0-9]{0,3}[:,.]?[0-9]{0,2}(m|min|mins|minute|minutes|h|hr|hrs|hour|hours|d|day|days)?$/

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

    def save
      valid? ? super : false
    end

    def valid?
      validate
      super
    end

    protected

    def validate
      if minutes && !(minutes =~ TIME_REGEXP)
        errors.add('minutes', 'has invalid format')
      end
    end
  end
end