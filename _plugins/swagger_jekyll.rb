require 'json'
require 'open-uri'

require_relative 'swagger_jekyll/path'
require_relative 'swagger_jekyll/reference'
require_relative 'swagger_jekyll/response'
require_relative 'swagger_jekyll/info'
require_relative 'swagger_jekyll/specification'
require_relative 'swagger_jekyll/schema'
require_relative 'swagger_jekyll/verb'
require_relative 'swagger_jekyll/parameter'
require_relative 'swagger_jekyll/tag'
require_relative 'swagger_jekyll/schema/all_of'
require_relative 'swagger_jekyll/schema/any_of'
require_relative 'swagger_jekyll/schema/array'
require_relative 'swagger_jekyll/schema/number'
require_relative 'swagger_jekyll/schema/object'
require_relative 'swagger_jekyll/schema/string'
require_relative 'swagger_jekyll/schema/anything'

# taken from 18F/Jekyll_get
if defined?(Jekyll)
  module SwaggerJekyll
    class Generator < Jekyll::Generator
      safe true
      priority :highest

      def generate(site)
        config = site.config['swagger']
        if config.nil?
          return
        end
        if !config.is_a?(Array)
          config = [config]
        end
        config.each do |d|
          data_key = d['id'] || 'swagger'
          source = JSON.load(open(d['json']))
          site.data[data_key] = SwaggerJekyll::Specification.new(source)

          if d['cache']
            data_source = (site.config['data_source'] || '_data')
            path = "#{data_source}/#{d['data']}.json"
            open(path, 'wb') do |file|
              file << JSON.generate(site.data[d['data']])
            end
          end
        end
      end
    end
  end
end
