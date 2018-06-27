module SwaggerJekyll
  class Schema::Anything < Schema
    def compact_type
      'anything'
    end

    def example(depth=nil)
      'undefined'
    end
  end
end
