activate :directory_indexes

data.devices.each do |device|
  proxy "/devices/#{device[0]}/index.html",
        "/templates/device-guide.html",
        locals: { device: device[1] },
        ignore: true
end

data.recipes.each do |recipe|
  proxy "/recipes/#{recipe[0]}/index.html",
        "/templates/recipe.html",
        locals: { recipe: recipe[1] },
        ignore: true
end

helpers do
  def md2html(markdown)
    Kramdown::Document.new(markdown).to_html if markdown
  end

  def device_recipes(device)
    data.recipes.select { |_, recipe| recipe.devices.collect(&:device).include?(device.name) }
  end
end
