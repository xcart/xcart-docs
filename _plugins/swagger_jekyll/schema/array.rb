require_relative '../schema'

module SwaggerJekyll
  class Schema::Array < Schema
    def compact_type
      "#{element_type.compact_type}[] array"
    end

    def example(depth=nil)
      [element_type.example(depth)]
    end

    def element_type
      @_element_type ||= Schema.factory(nil, hash['items'], specification)
    end
  end
end
