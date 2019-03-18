require 'dotenv/load'
require 'bundler'
Bundler.require

require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
     @start = Trivia.new(@question,@correct_answer,@incorrect_answers)
    erb :index
  end
# post '/result'do
# @start = Trivia.new(@question,@correct_answer,@incorrect_answers)
# erb :result
# end
end