source 'https://rubygems.org'
source 'https://rails-assets.org'

ruby '2.2.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'


# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'acts_as_list'

gem 'bootstrap-sass', '~> 3.3.1'

gem 'rails-assets-scroll-reveal'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Admin
gem 'activeadmin', github: 'activeadmin'
gem 'devise'
gem 'inherited_resources', github: 'josevalim/inherited_resources', branch: 'rails-4-2'

# Pictures & Interface
gem 'carrierwave'
gem 'mini_magick'
gem "fog" # Amazon S3
gem "wysiwyg-rails"
gem "font-awesome-rails"
gem 'country_select', github: 'stefanpenner/country_select'

group :development do
  gem 'sqlite3'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'heroku'
  gem 'spring'
end

group :production do
  gem 'rails_12factor'
  gem 'thin'
  gem 'pg'
end
