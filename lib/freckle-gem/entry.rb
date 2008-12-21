require 'json'

module FreckleGem

  class Entry
    @@attributes = [:minutes, :project, :description, :user, :date].freeze
    @@attributes.each do |a|
      attr_accessor a
    end

    def self.new
      e = super
      e.date = Date.today
      e
    end

    def self.from_options(options)
      @@attributes.inject(Entry.new) do |e, a|
        e.send("#{a}=", options[a]) if options[a]; e
      end
    end

    def attributes
      @@attributes.inject({}) do |h, a|
        h[a] = self.send(a); h
      end
    end

    def to_json
      { :entry => self.attributes }.to_json
    end
  end
end