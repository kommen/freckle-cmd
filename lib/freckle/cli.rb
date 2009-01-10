require 'rubygems'
require 'optparse'
require 'yaml'
require 'json'
require 'activeresource'
require 'freckle/app_config'
require 'freckle-gem/entry'
require 'freckle-gem/project'

module Freckle
  class CLI
    def self.execute(stdout, arguments=[])

      options = {}
      entry_attributes = {}
      mandatory_options = %w(  )

      parser = OptionParser.new do |opts|
        opts.banner = <<-BANNER.gsub(/^          /,'')
          This is a commandline interface for tracking time with freckle.

          Usage: #{File.basename($0)} [options]

          Options are:
        BANNER
        opts.separator ""

        opts.on("-t", "--time=TIME") { |arg| entry_attributes[:minutes] = arg }
        opts.on("-p", "--project=PROJECT") { |arg| options[:project_name] = arg }
        opts.on("-d", "--description=DESCRIPTION") { |arg| entry_attributes[:description] = arg }
        opts.on("-D", "--date=DATE") { |arg| entry_attributes[:date] = arg }

        opts.on("-h", "--help",
                "Show this help message.") { stdout.puts opts; exit }
        opts.parse!(arguments)

        if mandatory_options && mandatory_options.find { |option| options[option.to_sym].nil? }
          stdout.puts opts; exit
        end
      end

      entry = FreckleGem::Entry.new(entry_attributes.merge(:user => Freckle::AppConfig.user))
      entry.project_name = options[:project_name] if options[:project_name]
      entry.save
    end
  end
end