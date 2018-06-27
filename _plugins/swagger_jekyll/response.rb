module SwaggerJekyll
  class Response < Struct.new(:code, :hash, :specification)
    MAX_DEPTH=3

    def description
      hash['description']
    end

    def to_liquid
      hash.dup.merge(
        'code' => code,
        'compact_type' => compact_type,
        'schema' => response_type,
        'example' => example
      )
    end

    def compact_type
      response_type.compact_type
    end

    def response_type
      Schema.factory(nil, hash['schema'], specification)
    end

    def example
      if @_example.nil?
        @_example = response_type.example(MAX_DEPTH).to_json
      end

      @_example
    end
  end
end
