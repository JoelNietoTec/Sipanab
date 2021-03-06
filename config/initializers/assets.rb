# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

%w( admin articles documents links images sections posts users wallpapers welcome ).each do |controller|
  Rails.application.config.assets.precompile += ["#{controller}.js", "#{controller}.css"]
end

  Rails.application.config.assets.precompile += [ "glyphicons-halflings-regular.svg", "glyphicons-halflings-regular.eot", "glyphicons-halflings-regular.woff" , "glyphicons-halflings-regular.ttf" ]

  Rails.application.config.assets.precompile += [ "white_carbonfiber.png" ]
