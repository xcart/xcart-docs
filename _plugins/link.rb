# encoding: utf-8

# Jekyll plugin for maintaining links and referencis.
# adds {% link %} and {% ref %} tags
#
# Author: Eugene Dementjev
# Version: 0.2.2

require 'pathname'
require 'xmlsimple'

module Jekyll
  module ReferencePlugin

    class LinkTag < Liquid::Tag
      def initialize(tag_name, args, tokens)
        super
        title_match = /^["']([\s\S]*)['"]/.match(args)
        id_match = /(\S+?)(#[\S]*)?\s*$/.match(args)
        @title = title_match ? title_match.captures.first : ''
        @id = id_match ? id_match.captures.first : ''
        @hash = (id_match ? id_match.captures[1] : '') || ''
      end

      def render(context)
        @site = context.registers[:site]
        @config = context.registers[:site].config
        @page = context.environments.first["page"]

        url = @site.data['links'][@id] ? @site.data['links'][@id][:link] + @hash : @id + @hash

        baseurl = @config['baseurl']

        markup = "[#{@title}](#{baseurl}/#{url})"

        return markup
      end
    end

    class RefTag < Liquid::Tag
      def initialize(tag_name, args, tokens)
        super
        @id = args.strip
      end

      def render(context)
        @site = context.registers[:site]
        @config = context.registers[:site].config
        @page = context.environments.first["page"]

        url = @site.data['links'][@id] ? @site.data['links'][@id][:link] : '404.html'

        baseurl = @config['baseurl']

        markup = "#{baseurl}/#{url}"

        return markup
      end
    end

    class ReferenceIndex < Jekyll::StaticFile
      def write(dest)
        true
      end
    end

    class IndexGenerator < Jekyll::Generator
      def generate(site)
        path = Pathname.new(site.dest) + site.config['index_path']

        index = site.pages.inject(Hash.new) do |memo, page|
          if page['title'] && page['identifier'] && page['path']
            link_parts = page['path'].split('/').slice(0..-1)
            link_parts.last.gsub!('md', 'html')
            link = link_parts.join('/')
            memo.store(page['identifier'], { "title": page['title'], "link": link, "lang": page['lang'] })
          end
          memo
        end

        site.data['links'] = index

        begin
          File.open(path, 'w+') do |h|
            h.write XmlSimple.xml_out(index, {'NoAttr' => true, "RootName" => "refs", "XmlDeclaration" => true})
          end
        rescue Errno::ENOENT => e
          puts e
        end

        # Keep the links.xml file from being cleaned by Jekyll
        site.static_files << Jekyll::ReferencePlugin::ReferenceIndex.new(site, site.dest, "/", site.config['index_path'])
      end
    end

  end
end

Liquid::Template.register_tag('link', Jekyll::ReferencePlugin::LinkTag)
Liquid::Template.register_tag('ref', Jekyll::ReferencePlugin::RefTag)