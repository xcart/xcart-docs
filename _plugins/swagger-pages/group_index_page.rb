require 'securerandom'

module SwaggerPages
  class GroupIndexPage < Jekyll::Page
    def initialize(site, base, dir, api_data)
      spec = api_data['specification']
      tags = api_data['tags']
      specfile = api_data['specification_file']
      group = api_data['group']

      dir = get_page_dir(dir, group)

      @site = site
      @base = base
      @dir = dir
      @name = "index.html"

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'group_index.html')
      self.data['identifier'] = SecureRandom.hex(10)
      self.data['api'] = Hash.new
      self.data['api']['version'] = spec.info.version
      self.data['api']['spec'] = spec
      self.data['tags'] = tags
      self.data['group'] = '/' + sanitize_filename(group)
      self.data['menu_level'] = 3
      self.data['order'] = (group === 'Core' ? 50 : 100)
      self.data['title'] = group + ' resources'
    end

    def get_page_dir(dir, group=nil)
      dir = group ? dir + '/' + sanitize_filename(group) : dir
    end

    def sanitize_filename(name)
      name.gsub(/[^\w\s_-]+/, '') # Removes anything that isn't a word, space, underscore, or minus sign
            .gsub(/(^|\b)\s+($|\s?\b)/, '\\1\\2') # Converts whitespace between words into separating slashes
            .gsub(/\s+/, '_') # Converts all left whitespace to underscore
    end
  end
end