# encoding: utf-8

# Jekyll plugin for providing localization helpers.
# adds {% language_selector %} tag
#
# Author: Eugene Dementjev
# Version: 0.1.0

module Jekyll
  module LocalizationPlugin

    class LanguageSelectorTag < Liquid::Tag
      def initialize(tag_name, arg_string, tokens)
        super
      end

      def render(context)
        @site = context.registers[:site]
        @config = context.registers[:site].config
        @page = context.environments.first["page"]
        @lang = @page.fetch('lang', @config['lang_default'])

        versions = @site.pages.select do |item| 
          item.data['path'] != @page['path'] && item.data.fetch('title', nil) && item.lang_equal_url(@page['url']) === 0
        end

        if versions.length > 1 then
          text = @config['lang'][@lang]
          items = versions.map { |item| render_item(item) }.join
          markup = <<-HTML
          <div class="ui language floating dropdown link item" id="language-selector">
            <i class="world icon"></i>
            <span class="text">#{text}</span>
            <div class="menu">
              #{items}
            </div>
          </div>
          HTML
        else
          markup = ''
        end

        return markup
      end

      def render_item(item)
        item_lang = item.data.fetch('lang', @config['lang_default'])
        label = @config['lang'][item_lang]
        if item_lang == @lang then
          return "<div class='item'>#{label}</div>"
        else 
          url = item.url()
          return "<a class='item' href='#{url}'>#{label}</a>"
        end
      end

    end
  end
end

Liquid::Template.register_tag('language_selector', Jekyll::LocalizationPlugin::LanguageSelectorTag)