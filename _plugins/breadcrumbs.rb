require_relative 'drops/breadcrumb_item.rb'

Jekyll::Hooks.register :pages, :pre_render do |page, payload|
  drop = Drops::BreadcrumbItem

  if page.url == "/" + payload['site']['baseurl']
    then payload["breadcrumbs"] = [
      drop.new(page, payload)
    ]
  else
    payload["breadcrumbs"] = []
    pth = page.url.split("/")

    1.upto(pth.size - 1) do |int|
      joined_path = pth[0..int].join("/")
      item = page.site.pages.find { |page_| joined_path == "" && page_.url == "/" || page_.url.chomp("/") == joined_path }
      payload["breadcrumbs"] << drop.new(item, payload) if item
    end
  end

  payload
end