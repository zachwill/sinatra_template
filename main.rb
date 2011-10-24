require 'sinatra/base'
require 'sinatra/contrib'


class Main < Sinatra::Base
  register Sinatra::Contrib

  get '/' do
    erb :home
  end

  get '/about/' do
    erb :about
  end
end
