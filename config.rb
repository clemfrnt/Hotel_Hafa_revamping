activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :sprockets

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :relative_assets
  set :relative_links, true
end

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.deploy_method = :git
  deploy.branch = 'master'
end

#activate :deploy do |deploy|
  #deploy.deploy_method   = :ftp
  #deploy.host            = 'ftp.hotelhafasayulita.com'
  #deploy.path            = '/'
  #deploy.user            = 'hotelhafa'
  #deploy.password        = 'SXusU5Mp'
#end

#Sitemap to improve SEO
page "/sitemap.xml", :layout => false

# Sitemap
set :url_root, 'http://www.hotelhafa-sayulita.com/'
activate :search_engine_sitemap

#robot.txt
activate :robots,
  :rules => [
    {:user_agent => '*', :allow => %w(/)}
  ],
  :sitemap => "http://www.hotelhafa-sayulita.com/sitemap.xml"
