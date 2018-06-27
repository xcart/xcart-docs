module SwaggerJekyll
  class Verb
    attr_accessor :verb, :path, :responses
    def initialize(verb, path, hash, specification)
      @verb = verb
      @path = path
      @hash = hash
      @specification = specification
    end

    def to_liquid
      @hash.dup.merge(
        'verb' => @verb,
        'path' => @path,
        'full_path' => full_path,
        'responses' => responses,
        'parameters' => parameters,
        'has_query_params' => has_query_params?,
        'has_body_params' => has_body_params?,
        'has_path_params' => has_path_params?,
        'sample_response' => sample_response)
    end

    def full_path
      @specification.host + @specification.base_path + @path
    end

    def sample_response?
      @hash.dig('responses', '200', 'examples', 'application/json')
    end

    def sample_response
      if @_sample_response.nil?
        example_json = @hash.dig('responses', '200', 'examples', 'application/json')
        if example_json
          @_sample_response = JSON.pretty_generate(example_json)
        end
      end

      @_sample_response
    end

    def parameters
      parameters_hash.values
    end

    def responses
      responses_hash.values
    end

    def has_query_params?
      parameters.any? {|param| param.in == 'query'}
    end

    def has_body_params?
      parameters.any? {|param| param.in == 'body'}
    end

    def has_path_params?
      parameters.any? {|param| param.in == 'path'}
    end

    # FIXME: Move to module mixin
    def method_missing(method_sym, *arguments, &block)
      if @hash.key?(method_sym.to_s)
        @hash[method_sym.to_s]
      else
        super
      end
    end

    private

    def parameters_hash
      if @_parameters_hash.nil?  
        if @hash.nil? or not @hash.key?('parameters')
          return Hash.new
        end

        @_parameters_hash = {}

        @hash['parameters'].each do |hash|
          name = hash['parameter']
          @_parameters_hash[name] = Parameter.new(name, hash, @specification)
        end
      end

      @_parameters_hash
    end

    def responses_hash
      if @_responses_hash.nil?
        @_responses_hash = {}
        @hash['responses'].each do |code, response_hash|
          @_responses_hash[code] = Response.new(code, response_hash, @specification)
        end
      end

      @_responses_hash
    end
  end
end
