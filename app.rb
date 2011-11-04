require 'sinatra/base'
require 'sinatra/contrib'


class App < Sinatra::Base
  register Sinatra::Contrib

  get '/' do
    erb :home
  end

  get '/about/' do
    erb :about
  end

  get '/json' do
    json :foo => 'bar', :code => 'america'
  end
end
