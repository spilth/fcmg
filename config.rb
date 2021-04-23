activate :directory_indexes

set :layout, :index

page "recipes/*", layout: :recipe

data.devices.each do |device|
  proxy "/devices/#{device[0]}/index.html",
        "/templates/device-guide.html",
        locals: { device: device[1] },
        layout: :device_guide,
        ignore: true
end

helpers do
  def md2html(markdown)
    Kramdown::Document.new(markdown).to_html if markdown
  end
end