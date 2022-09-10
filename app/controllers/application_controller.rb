class ApplicationController < Sinatra::Base
  configure do
    set :views, 'app/views'
  end

  set :default_content_type, 'application/json'

  # Add your routes here.Routes that don't represent a model go here eg about or contact routes
  get '/' do
    { message: 'Good luck with your project!' }.to_json
  end
end
 