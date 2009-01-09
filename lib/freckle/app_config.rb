module Freckle

  class AppConfig
    @@global_config = {
      'host' => 'letsfreckle.com',
      'port' => 80
    }.merge(File.open(File.expand_path("~/.freckle.yml")) { |yf| YAML::load(yf)['freckle'] })

    def self.method_missing(method_symbol, *arguments)
      method_name = method_symbol.to_s
      @@global_config.has_key?(method_name) ? @@global_config[method_name] : super
    end
  end
end