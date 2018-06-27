require 'securerandom'

module SwaggerPages
  class ApiIndexPage < Jekyll::Page
    def initialize(site, base, dir, api_data)
      spec = api_data['specification']
      tags = api_data['tags']
      specfile = api_data['specification_file']

      @site = site
      @base = base
      @dir = dir
      @name = "index.html"

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'api_index.html')
      self.data['identifier'] = SecureRandom.hex(10)
      self.data['api'] = Hash.new
      self.data['api']['version'] = spec.info.version
      self.data['api']['spec'] = spec
      self.data['api']['tags'] = tags
      self.data['group'] = ''
      self.data['menu_level'] = 2
      self.data['specfile'] = specfile

      self.data['title'] = "API Reference v#{spec.info.version}"

      if spec.info.version == @site.config['swagger_pages']['latest_api'] then 
        self.data['categories'] = ['api']
      end
    end
  end
end