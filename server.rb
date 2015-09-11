require 'sinatra/base'

class Server < Sinatra::Base
  get '/' do
    @github_access_token = ENV['GITHUB_ACCESS_TOKEN']
    send_file 'index.html'
  end
end
