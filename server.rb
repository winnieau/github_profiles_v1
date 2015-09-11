require 'sinatra/base'

class Server < Sinatra::Base

  set :views, proc { File.join(root, '.')}

  get '/' do
    @github_access_token = ENV['GITHUB_ACCESS_TOKEN']
    erb :"index.html"
  end
end
