# encoding: utf-8

# Jekyll plugin for providing navigation.
# adds {% navigation_menu %} tag
#
# Author: Eugene Dementjev
# Version: 0.3.5

require 'mini_cache'

module Jekyll
  module NavigationPlugin  
    class TopMenuTag < Liquid::Tag
      def cache
        @@cache ||= MiniCache::Store.new
      end

      def render(context)
        @site = context.registers[:site]
        @config = context.registers[:site].config
        @page = context.environments.first["page"]

        self.cache.get_or_set('top_menu') do
          @menu_items = @site.pages
            .select { |item| item.data.fetch('categories', []).include? 'top' }
            .sort { |a, b| a <=> b }
          items = @menu_items.map { |item| render_item(item) }

          items.join
        end
      end

      def render_item(item)
        url = @site.baseurl + item['url']
        markup = <<-HTML
        <a class="item" href="#{url}">#{item['title']}</a>
        HTML
      end
    end

    class MenuTag < Liquid::Tag  
      def cache
        @@cache ||= MiniCache::Store.new
      end

      def initialize(tag_name, args, tokens)
        super
        @starting_level = 1
      end

      def render(context)
        @site = context.registers[:site]
        @config = context.registers[:site].config
        @page = context.environments.first["page"]
        baseurl = context['navigation_baseurl']

        self.cache.get_or_set("menu-#{baseurl}") do
          @menu_items = @site.pages.sort { |a, b| a <=> b }
          level = render_level(@starting_level, baseurl)

          level[:markup]
        end
      end

      def render_level(level, parent, force_active_class = false)
        menu_id = level == @starting_level ? 'id="navigation-menu"' : ''
        css_class = level == @starting_level ? 'ui sticky vertical secondary navigation accordion pointing' : 'content'

        items = @menu_items.map { |item| render_item(item, level, parent) }

        items_text = items.map { |item| item[:markup] }.join
        # active class calculation moved to js due to aggressive caching
        # is_active = items.map { |item| item[:active] }.any?
        is_active = false

        # active class calculation moved to js due to aggressive caching
        # active_class = level > @starting_level && (is_active || force_active_class) ? 'active' : ''
        active_class = '' 

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

        should_show_in_sidebar = item.data.fetch('show_in_sidebar', true)

        if !item.data.fetch('redirect_to', '').empty?
          should_show_in_sidebar = !item.data.fetch('hide_from_navigation', false)
        end

        if should_show_in_sidebar and item.data.fetch('title', '') and itembase == parent and parts.length > level and parts.length <= level + 1
      
          # active class calculation moved to js due to aggressive caching
          # is_active = item['identifier'] == @page['identifier']
          is_active = false
          active_class = is_active ? 'active' : ''

          next_level = render_level(level + 1, parts.join('/'), is_active)
          next_opener = (next_level[:markup].length > 0) ? '<a class="opener"><i class="dropdown icon"></i></a>' : ''
          has_sub = (next_level[:markup].length > 0 ? 'has-sub' : '')

          # active class calculation moved to js due to aggressive caching
          # active_title_class = next_level[:active] || (is_active && next_level[:markup].length > 0) ? 'active' : ''
          active_title_class = ''

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
Liquid::Template.register_tag('top_menu', Jekyll::NavigationPlugin::TopMenuTag)