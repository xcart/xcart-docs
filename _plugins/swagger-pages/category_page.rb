require 'securerandom'

module SwaggerPages
  class CategoryPage < Jekyll::Page
    def initialize(site, base, dir, api_data)
      tag = api_data['tag']
      verbs = api_data['verbs'].reverse
      spec = api_data['specification']
      group = api_data['group']

      filename = get_page_filename(tag, group)
      dir = get_page_dir(dir, group)

      description = spec.tag(tag) ? spec.tag(tag).description : ''

      @site = site
      @base = base
      @dir = dir
      @name = "#{filename}.html"

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'reference.html')
      self.data['identifier'] = SecureRandom.hex(10)
      self.data['api'] = Hash.new
      self.data['api']['category'] = tag
      self.data['api']['operations'] = verbs
      self.data['api']['version'] = spec.info.version
      self.data['api']['description'] = description
      self.data['group'] = '/' + sanitize_filename(group)
      self.data['menu_level'] = 3
      self.data['hrefs'] = verbs.map do |verb|
        {
          'title' => "[#{verb.verb}] #{verb.summary}",
          'anchor' => '#' + verb.operationId
        }
      end

      title = tag.gsub(group, '').gsub('\\', '')
      self.data['title'] = (group === "Core" ? "#{tag}" : "#{title} (#{group})")
    end

    def get_page_dir(dir, group=nil)
      dir = group ? dir + '/' + sanitize_filename(group) : dir
    end

    def get_page_filename(tag, group=nil)
      filename = group ? sanitize_filename(tag.gsub(group, '')) : sanitize_filename(tag)
    end

    def sanitize_filename(name)
      name.gsub(/[^\w\s_-]+/, '') # Removes anything that isn't a word, space, underscore, or minus sign
            .gsub(/(^|\b)\s+($|\s?\b)/, '\\1\\2') # Converts whitespace between words into separating slashes
            .gsub(/\s+/, '_') # Converts all left whitespace to underscore
    end
  end
end