require 'rubygems'
require 'optparse'
require 'net/http'
require 'uri'
require 'yaml'
require 'freckle-gem/entry'

module Freckle
  class CLI
    def self.execute(stdout, arguments=[])

      options = {}
      global_config = {
        'host' => 'letsfreckle.com',
        'port' => 80
      }.merge(self.load_config)

      mandatory_options = %w(  )

      parser = OptionParser.new do |opts|
        opts.banner = <<-BANNER.gsub(/^          /,'')
          This is a commandline interface for tracking time with freckle.

          Usage: #{File.basename($0)} [options]

          Options are:
        BANNER
        opts.separator ""

        opts.on("-t", "--time=TIME") { |arg| options[:minutes] = arg } 
        opts.on("-p", "--project=PROJECT") { |arg| options[:project] = arg }
        opts.on("-d", "--description=DESCRIPTION") { |arg| options[:description] = arg }
        opts.on("-D", "--date=DATE") { |arg| options[:date] = arg }

        opts.on("-h", "--help",
                "Show this help message.") { stdout.puts opts; exit }
        opts.parse!(arguments)

        if mandatory_options && mandatory_options.find { |option| options[option.to_sym].nil? }
          stdout.puts opts; exit
        end
      end

      entry = FreckleGem::Entry.from_options(options.merge(:user => global_config['user']))
      http = Net::HTTP.new("#{global_config['subdomain']}.#{global_config['host']}", global_config['port'])
      data = entry.to_json
      header = {'Content-Type' => 'application/json'}
      response = http.post("/api/entries?token=#{global_config['authtoken']}", data, header)
      case response
      when Net::HTTPSuccess
        puts response.body
      else
        puts "Failed to create entry."
      end
    end

    def self.load_config(file = "~/.freckle.yml")
      File.open(File.expand_path(file)) { |yf| YAML::load( yf )['freckle'] }
    end
  end
end