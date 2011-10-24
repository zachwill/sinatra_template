require 'sinatra'
require 'sinatra/contrib'


class Main < Sinatra::Base
  helpers Sinatra::ContentFor

  get '/' do
    erb :home
  end
end
