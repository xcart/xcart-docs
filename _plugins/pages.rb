require "jekyll-redirect-from"

module Jekyll
  class PagesDirGenerator < Generator
    safe true
    priority :highest
    def generate(site)
      pages = []
      pages_dir = site.config['pages_path'] || './_pages'
      all_raw_paths = Dir["#{pages_dir}/**/*"]
      all_raw_paths.each do |f|

        if File.file?(File.join(site.source, '/', f))
          filename = f.match(/[^\/]*$/)[0]
          clean_filepath = f.gsub(/^#{pages_dir}\//, '')
          clean_dir = extract_directory(clean_filepath)

          pages << PagesDirPage.new(site,
                                         site.source,
                                         clean_dir,
                                         filename,
                                         pages_dir)

        end
      end

      site.pages.concat(pages.select { |page| site.publisher.publish?(page) })
    end

    def extract_directory(filepath)
      dir_match = filepath.match(/(.*\/)[^\/]*$/)
      if dir_match
        return dir_match[1]
      else
        return ''
      end
    end
  end

  class PagesDirPage < Page

    def initialize(site, base, dir, name, pagesdir)
      @site = site
      @base = base
      @dir = dir
      @name = name

      process(name)
      read_yaml(File.join(base, pagesdir, dir), name)

      data.default_proc = proc do |hash, key|
        site.frontmatter_defaults.find(File.join(dir, name), type, key)
      end

      Jekyll::Hooks.trigger :pages, :post_init, self
    end
  end
end

JekyllRedirectFrom::CLASSES = JekyllRedirectFrom::CLASSES.dup + [Jekyll::PagesDirPage]

module JekyllRedirectFrom
  class RedirectPage
    alias_method :old_read_yaml, :read_yaml

    def read_yaml(*args)
      old_read_yaml(*args)

      if (self.data['redirect_to'].nil? || self.data['redirect_to'].empty?)
        self.data['show_in_sidebar'] = false
      end
    end
  end
end