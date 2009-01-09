require 'rubygems'
require 'optparse'
require 'net/http'
require 'uri'
require 'yaml'
require 'activeresource'
require 'freckle/app_config'
require 'freckle-gem/entry'

module Freckle
  class CLI
    def self.execute(stdout, arguments=[])

      options = {}
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

      entry = FreckleGem::Entry.from_options(options.merge(:user => Freckle::AppConfig.user))
      response = send_request(entry.to_json)
      case response
      when Net::HTTPSuccess
        puts response.body
      else
        puts "Failed to create entry."
      end
    end

    def self.send_request(data)
      http = Net::HTTP.new("#{Freckle::AppConfig.subdomain}.#{Freckle::AppConfig.host}", Freckle::AppConfig.port)
      http.post("/api/entries.json?token=#{Freckle::AppConfig.authtoken}", data, { 'Content-Type' => 'application/json' })
    end
  end
end