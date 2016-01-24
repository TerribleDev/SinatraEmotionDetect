require 'indico'
require 'base64'
require 'openssl'


class HappyOrSad < Sinatra::Base

  set :public_folder => "public", :static => true

  get "/" do
    erb :welcome
  end

  post '/upload' do
   puts encoded =  Base64.encode64(params['myfile'][:tempfile].read)
   Indico.api_key = ENV['indicoApiKey']
   Indico.fer(encoded)
  end
end
