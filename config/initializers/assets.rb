# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( tamale_tabs_en_functions.js )
Rails.application.config.assets.precompile += %w( tamale_tabs_es_functions.js )
Rails.application.config.assets.precompile += %w( contact_us_functions.js )
Rails.application.config.assets.precompile += %w( footer_functions.js )
Rails.application.config.assets.precompile += %w( navbar_functions.js )

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
