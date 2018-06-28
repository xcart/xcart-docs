require_relative '../schema'

module SwaggerJekyll
  class Schema::AnyOf < Schema
    def compact_type
      type.join(", ")
    end
  end
end
