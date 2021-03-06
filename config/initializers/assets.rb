# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

Rails.application.config.assets.precompile += %w( lottie.js )
Rails.application.config.assets.precompile += %w( signup.js )
Rails.application.config.assets.precompile += %w( signup.css )
Rails.application.config.assets.precompile += %w( postIndex.css )
Rails.application.config.assets.precompile += %w( petindex.js )
Rails.application.config.assets.precompile += %w( petindex1.js )
Rails.application.config.assets.precompile += %w( petindex2.js )
Rails.application.config.assets.precompile += %w( newform.css )
Rails.application.config.assets.precompile += %w( form.js )
Rails.application.config.assets.precompile += %w( showpost.css )
Rails.application.config.assets.precompile += %w( editform.css )
Rails.application.config.assets.precompile += %w( newlostform.css )
Rails.application.config.assets.precompile += %w( newfoundform.css )
Rails.application.config.assets.precompile += %w( login.css )
Rails.application.config.assets.precompile += %w( account.css )
Rails.application.config.assets.precompile += %w( chat.svg )
Rails.application.config.assets.precompile += %w( back.svg )
Rails.application.config.assets.precompile += %w( delete.svg )
Rails.application.config.assets.precompile += %w( logout.svg )
Rails.application.config.assets.precompile += %w( newpost.svg )
Rails.application.config.assets.precompile += %w( profile.svg )