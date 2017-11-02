# encoding: utf-8

# Jekyll plugin for providing navigation.
# adds {% navigation_menu %} tag
#
# Author: Eugene Dementjev
# Version: 0.3.5

module Jekyll
  module NavigationPlugin
    class BreadcrumbsTag < Liquid::Tag

    end

    class MenuTag < Liquid::Tag
      def initialize(tag_name, baseurl, tokens)
        super
        @baseurl = baseurl
      end

      def render(context)
        @site = context.registers[:site]
        @config = context.registers[:site].config
        @page = context.environments.first["page"]
        baseurl = context[@baseurl.strip]

        @menu_items = @site.pages
        # @menu_items = @site.pages.select { |item| item.data.fetch('lang', '') == @page.fetch('lang', @config['lang_default']) }
        @menu_items = @menu_items.sort { |a, b| a <=> b }
        level = render_level(2, baseurl)

        return level[:markup]
      end

      def render_level(level, parent, force_active_class = false)
        menu_id = level == 2 ? 'id="navigation-menu"' : ''
        css_class = level == 2 ? 'ui sticky large vertical secondary navigation accordion pointing' : 'content'

        items = @menu_items.map { |item| render_item(item, level, parent) }

        items_text = items.map { |item| item[:markup] }.join
        is_active = items.map { |item| item[:active] }.any?

        active_class = level > 2 && (is_active || force_active_class) ? 'active' : ''

        if items_text.strip.length > 0 then
          markup = <<-HTML
          <div #{menu_id} class="#{css_class} menu #{active_class}">
            #{items_text}
          </div>
          HTML

        else
          markup = ''
        end

        return {:markup => markup, :active => is_active}
      end

      def render_item(item, level, parent)
        parts = item['url'].sub('/', '').gsub('index.html', '').split('/')
        itembase = parts.slice(0, level).join('/')

        if item.data.fetch('show_in_sidebar', true) and item.data.fetch('title', '') and itembase == parent and parts.length > level and parts.length <= level + 1
          # Menu item is active
          is_active = item['identifier'] == @page['identifier']
          active_class = is_active ? 'active' : ''

          next_level = render_level(level + 1, parts.join('/'), is_active)
          next_opener = (next_level[:markup].length > 0) ? '<a class="opener"><i class="dropdown icon"></i></a>' : ''
          has_sub = (next_level[:markup].length > 0 ? 'has-sub' : '')

          active_title_class = next_level[:active] || (is_active && next_level[:markup].length > 0) ? 'active' : ''

          url = @site.baseurl + item['url']
          markup = <<-HTML
            <div class="anchor-link item #{has_sub} #{active_class}">
                <div class="title #{active_title_class}">
                  <a class="link " href="#{url}" >#{item['title']}</a>
                  #{next_opener}
                </div>
                #{next_level[:markup]}
            </div>
          HTML

          return {:markup => markup, :active => is_active || next_level[:active] }
        else
          return {:markup => '', :active => false }
        end

      end

    end
  end
end

Liquid::Template.register_tag('navigation_menu', Jekyll::NavigationPlugin::MenuTag)