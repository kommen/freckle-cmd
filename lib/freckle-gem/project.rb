require 'json'

module FreckleGem

  class Project
    @@attributes = [:id, :name].freeze
    @@attributes.each do |a|
      attr_accessor a
    end

    def self.from_options(options)
      @@attributes.inject(Project.new) do |e, a|
        e.send("#{a}=", options[a]) if options[a]; e
      end
    end

    def attributes
      @@attributes.inject({}) do |h, a|
        h[a] = self.send(a); h
      end
    end

    def to_json
      { :project => self.attributes }.to_json
    end
  end
end