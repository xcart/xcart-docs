require 'open-uri'

module SwaggerJekyll
  class Specification
    attr_accessor :json

    def self.load_json(path)
      json = nil
      open(path) { |file| json = JSON.parse(file.read) }
      new(json)
    end

    def initialize(json)
      @json = json
    end

    def to_liquid
      {
        'base_path' => base_path,
        'host' => host,
        'swagger_version' => swagger_version,
        'consumes' => consumes,
        'produces' => produces,
        'paths' => paths,
        'definitions' => definitions,
        'tags' => tags,
        'info' => info
      }
    end

    def swagger_version
      @json['swagger']
    end

    def host
      @json['host']
    end

    def base_path
      @json['basePath']
    end

    def consumes
      @json['consumes']
    end

    def produces
      @json['produces']
    end

    def security
      @json['security']
    end

    def info
      Info.new(@json['info'])
    end

    def paths
      paths_hash.values
    end

    def path(name)
      paths_hash[name]
    end

    def definition(name)
      definitions_hash[name]
    end

    def definitions
      definitions_hash.values
    end

    def tag(name)
      tags_hash[name]
    end

    def tags
      tags_hash.values
    end

    def inspect
      "<<SwaggerJekyll::Specification>>"
    end

    private

    def paths_hash
      if @_paths_hash.nil?
        @_paths_hash = {}
        @json['paths'].each do |name, value|
          @_paths_hash[name] = Path.new(name, value, self)
        end
      end

      @_paths_hash
    end

    def definitions_hash
      if @_definitions_hash.nil?
        @_definitions_hash = {}

        @json['definitions'].each do |name, hash|
          @_definitions_hash[name] = Schema.factory(name, hash, self)
        end
      end

      @_definitions_hash
    end

    def tags_hash
      if @_tags_hash.nil?
        @_tags_hash = {}

        @json['tags'].each do |hash|
          name = hash['name']
          @_tags_hash[name] = Tag.new(name, hash, self)
        end
      end

      @_tags_hash
    end
  end
end
