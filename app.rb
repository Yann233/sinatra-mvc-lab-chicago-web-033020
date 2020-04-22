require_relative 'config/environment'

# Create a POST method in your controller (app.rb) to receive your form's params.

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
  # post '/pig' do
    # text_from_user = params[:user_text]
    piglatinize = PigLatinizer.new
    @analyzed_words = piglatinize.piglatinize(params[:user_phrase])
    erb :piglatinize
    # erb :pig
  end

end

