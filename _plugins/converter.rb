# encoding: utf-8

# Jekyll plugin to automatically wrap code blocks with {% raw %} tag
#
# Author: Eugene Dementjev
# Version: 0.1.0

module Jekyll

    class CodeBlockWrapper
        def convert(content)
            # Wrap each code block in {% raw %} tag to prevent Liquid execution
            result = content.gsub(/(```|`)([\s\S]+?)(```|`)/) { |match|
                '{% raw %}' + match + '{% endraw %}'
            }

            # Enable inline PHP excerpt highlighting
            result = result.gsub('```php', '```php?start_inline=1')

            result
        end
    end
end

Jekyll::Hooks.register([:pages, :posts], :pre_render) do |page, payload|
    page.content = Jekyll::CodeBlockWrapper.new.convert(page.content)
end
