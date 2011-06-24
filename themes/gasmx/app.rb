# Use the app.rb file to load Ruby code, modify or extend the models, or
# do whatever else you fancy when the theme is loaded.

module Nesta
  class App
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
