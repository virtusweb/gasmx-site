# Use the app.rb file to load Ruby code, modify or extend the models, or
# do whatever else you fancy when the theme is loaded.
require 'rubygems'
require 'compass'
require 'sinatra'
require 'haml'

module Nesta
  class App
    configure do
      Compass.configuration do |config|
        config.project_path = File.dirname(__FILE__)
        config.sass_dir = 'views'
        config.environment = :development
        config.relative_assets = true
        config.http_path = "/"
      end
      set :haml, { :format => :html5 }
      set :sass, Compass.sass_engine_options
    end

    get '/css/:sheet.css' do
      content_type 'text/css', :charset => 'utf-8'
      cache sass(params[:sheet].to_sym)
    end
    # Uncomment the Rack::Static line below if your theme has assets
    # (i.e images or JavaScript).
    #
    # Put your assets in themes/gasmx/public/gasmx.
    #
    # use Rack::Static, :urls => ["/gasmx"], :root => "themes/gasmx/public"

    helpers do
      def breadcrumb_label(page)
        (page.abspath == '/') ? 'Inicio' : page.heading
      end
    end

    # Add new routes here.
  end
end
