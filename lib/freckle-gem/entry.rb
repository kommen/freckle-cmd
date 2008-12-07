require 'json'

module FreckleGem

  class Entry

    attr_accessor :time, :project, :description, :person
    def self.from_options(options)
      [:time, :project, :description, :person].inject(Entry.new) do |e, a|
        e.send("#{a}=", options[a]); e
      end
    end

    def attributes
      [:time, :project, :description, :person].inject({}) do |h, a|
        h[a] = self.send(a); h
      end
    end

    def to_json
      { :entry => self.attributes }.to_json
    end
  end
end