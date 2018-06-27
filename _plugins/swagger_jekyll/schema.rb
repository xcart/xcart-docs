module SwaggerJekyll
  class Schema < Struct.new(:name, :hash, :specification)
    def to_liquid
      hash.dup.merge(
        'name' => name,
        'title' => title,
        'description' => description,
        'compact_type' => compact_type,
        'example' => example,
        'properties' => properties
      )
    end

    def title
      hash['title'] || name
    end

    def description
      hash['description']
    end

    def type
      if hash['type']
        hash['type'].dup
      else
        'object'
      end
    end

    def compact_type
      type
    end

    def example(depth=nil)
      obj = properties.reduce(Hash.new) do |example, prop|
        prop_example = prop.compact_type
        
        if depth.nil?
          prop_example = prop.example
        elsif not depth.zero?
          prop_example = prop.example(depth - 1)
        end
          
        example[prop.name] = prop_example
        example
      end

      return obj.length > 0 ? obj : compact_type
    end

    def property(name)
      if properties_hash.key?(name)
        properties_hash[name]
      end
    end

    def properties
      properties_hash.values
    end

    def self.factory(name, hash, specification)
      if not hash.is_a?(Hash)
        return Schema::Anything.new(name, Hash.new, specification)
      end

      if hash.key?('$ref')
        Reference.new(name, hash, specification)
      elsif hash.key?('allOf')
        Schema::AllOf.new(name, hash, specification)
      else
        case hash['type']
        when ::Array
          Schema::AnyOf.new(name, hash, specification)
        when 'string'
          Schema::String.new(name, hash, specification)
        when 'integer', 'number', 'boolean'
          Schema::Number.new(name, hash, specification)
        when 'array'
          Schema::Array.new(name, hash, specification)
        when 'object', nil
          Schema::Object.new(name, hash, specification)
        else
          fail "Unhandled property type: #{hash.inspect}"
        end
      end
    end

    private

    def properties_hash      
      if @_properties_hash.nil?        
        unless hash.key?('properties')
          return Hash.new
        end

        @_properties_hash = {}
        hash['properties'].each do |name, property_hash|
          @_properties_hash[code] = Schema.factory(name, property_hash, specification)
        end
      end

      @_properties_hash
    end
  end
end
