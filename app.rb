require 'pry'
require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
class App < Sinatra::Base

    get  '/' do
        erb :user_input
    end

    post '/piglatinize' do
         sentence = params[:user_phrase]
        
        @pig_latinizer = PigLatinizer.new
        @pig = @pig_latinizer.piglatinize(sentence)

         erb :pig_latinize
      end
end