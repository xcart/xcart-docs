module SwaggerJekyll
  class Parameter < Struct.new(:name, :hash, :specification)
    def description
      hash['description']
    end

    def to_liquid
      hash.dup.merge(
        'parameter' => name,
        'compact_type' => compact_type,
        'schema' => parameter_type
      )
    end

    def in
      hash['in']
    end

    def compact_type
      parameter_type.compact_type
    end

    def parameter_type
      Schema.factory(nil, hash['schema'], specification)
    end
  end
end
