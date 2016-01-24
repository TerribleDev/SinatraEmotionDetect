require_relative "spec_helper"
require_relative "../happy_or_sad.rb"

def app
  HappyOrSad
end

describe HappyOrSad do
  it "responds with a welcome message" do
    get '/'

    last_response.body.must_include 'Welcome to the Sinatra Template!'
  end
end
