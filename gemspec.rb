SPEC = Gem::Specification.new do |spec| 
  spec.name = "BrowserCMS" 
  spec.version = "3.0.0" 
  spec.summary = "A " 
  spec.author = "Browsermedia" 
  spec.email = "admin@browsercms.com" 
  spec.homepage = "http://www.browsercms.com" 
  spec.files = ["rails/init.rb"]
  spec.files += Dir["app/**/*"]
  spec.files += Dir["db/migrate/[0-9]*_*.rb"]
  spec.files += Dir["lib/**/*"]
  spec.has_rdoc = true
  spec.extra_rdoc_files = ["README"]
  spec.require_path "lib"
  spec.autorequire = "cms"
end