require_relative 'swagger-pages/category_page'

# taken from 18F/Jekyll_get
if defined?(Jekyll)
  module SwaggerPages
    class Generator < Jekyll::Generator
      safe true
      priority :low

      class << self; attr_accessor :groups end
      @groups = Hash.new

      def generate(site)
        @site = site
        @config = site.config['swagger_pages']
        specs = site.config['swagger']
        if specs.nil?
          return
        end
        if !specs.is_a?(Array)
          specs = [specs]
        end
        specs.each do |d|
          data_key = d['id'] || 'swagger'
          specification = site.data[data_key]
          file = d['json']
          parse_spec(specification, file)
          Generator.groups.clear
        end
      end

      def parse_spec(specification, file)
        tags = get_tags(specification)

        tags.each do |tag, verbs|
          @site.pages << generate_page(tag, verbs, specification)
        end

        Generator.groups.each do |group, tags|
          @site.pages << generate_group_index(group, specification, tags)
        end

        @site.pages << generate_api_index(tags, specification, file)
      end

      def get_tags(specification)
        specification.paths.reduce(Hash.new) do |memo, path|
          path.verbs.each do |verb|
            if !verb.tags.is_a?(Array)
              next
            end

            verb.tags.each do |tag|
              if memo.include?(tag) 
                memo[tag] << verb
              else
                memo[tag] = [verb]
              end
            end
          end

          memo
        end
      end

      def generate_group_index(group, specification, tags)
        dir = generator_path(specification.info.version)
        data = {
          'tags' => tags,
          'specification' => specification,
          'group' => group
        }
        GroupIndexPage.new(@site, @site.source, dir, data)
      end


      def generate_api_index(tags, specification, file)
        dir = generator_path(specification.info.version)
        data = {
          'tags' => tags,
          'specification' => specification,
          'specification_file' => file
        }
        ApiIndexPage.new(@site, @site.source, dir, data)
      end

      def generate_page(tag, verbs, specification)
        dir = generator_path(specification.info.version)
        group = get_group_by_tag(specification, tag)

        data = {
          'tag' => tag,
          'verbs' => verbs,
          'specification' => specification,
          'group' => group
        }

        unless Generator.groups.include?(group)
          Generator.groups[group] = []
        end

        Generator.groups[group] << compile_tag_info(tag, group, verbs, specification)

        CategoryPage.new(@site, @site.source, dir, data)
      end

      def compile_tag_info (tag, group, verbs, spec)
        data = {
          'name' => tag.gsub(group, '').gsub('\\', ''),
          'description' => spec.tag(tag) ? spec.tag(tag).description : '',
          'external' => spec.tag(tag) ? spec.tag(tag).externalDocs : nil,
          'verbs' => verbs.map do |verb|
            {
              'title' => "[#{verb.verb}] #{verb.summary}",
              'anchor' => '#' + verb.operationId
            } end

        }
      end

      def get_group_by_tag(specification, tag)
        group = specification.tag(tag) ? specification.tag(tag).group : nil

        if group.nil?
          group = 'Core'
        end

        group
      end

      # Static: Return the generator path of the page
      # 
      # num_page - the pagination page number
      #
      # Returns the pagination path as a string
      def generator_path(version) 
        format = @config['path']
        if format.include?(":version")
          format = format.sub(':version', version)
        else
          raise ArgumentError.new("Invalid pagination path: '#{format}'. It must include ':version'.")
        end
        ensure_leading_slash(format)
      end

      # Static: Return a String version of the input which has a leading slash.
      #         If the input already has a forward slash in position zero, it will be
      #         returned unchanged.
      #
      # path - a String path
      #
      # Returns the path with a leading slash
      def ensure_leading_slash(path)
        path[0..0] == "/" ? path : "/#{path}"
      end

      # Static: Return a String version of the input without a leading slash.
      #
      # path - a String path
      #
      # Returns the input without the leading slash
      def remove_leading_slash(path)
        ensure_leading_slash(path)[1..-1]
      end

    end
  end
end
