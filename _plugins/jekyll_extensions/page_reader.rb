module JekyllExt
  class PageReader
    # Read all the files in <source>/<dir>/ for Yaml header and create a new Page
    # object for each file.
    #
    # dir - The String relative path of the directory to read.
    #
    # Returns an array of static pages.
    def read(files)
      pages_dir = site.config['pages_path'] || './_pages'
      all_raw_paths = Dir["#{pages_dir}/**/*"]
      all_raw_paths.each do |f|

        if File.file?(File.join(site.source, '/', f))
          filename = f.match(/[^\/]*$/)[0]
          clean_filepath = f.gsub(/^#{pages_dir}\//, '')
          clean_dir = extract_directory(clean_filepath)

          site.pages << Page.new(site,
                                 site.source,
                                 clean_dir,
                                 filename,
                                 pages_dir)

        end
      end
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

  class Page
    # Initialize a new Page.
    #
    # site - The Site object.
    # base - The String path to the source.
    # dir  - The String path between the source and the file.
    # name - The String filename of the file.
    def initialize(site, base, dir, name, pages_dir)
      @site = site
      @base = base
      @dir  = dir
      @name = name
      @path = if site.in_theme_dir(base) == base # we're in a theme
                site.in_theme_dir(pages_dir, name)
              else
                site.in_source_dir(pages_dir, name)
              end

      process(name)
      read_yaml(File.join(base, pages_dir, dir), name)

      data.default_proc = proc do |_, key|
        site.frontmatter_defaults.find(File.join(dir, name), type, key)
      end

      Jekyll::Hooks.trigger :pages, :post_init, self
    end
  end
end