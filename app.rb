require 'bundler'
Bundler.require

class Quiz < Sinatra::Application

  get '/' do
    erb :quiz
  end

  post '/quiz' do
    array = []
    answers = params.each do |key, value|
      value.each do |k,v|
        array << v
        end
      end
      if array.count('jayz') >= 2
        @answer = "You are Jay Z"
      end
      if array.count('kanye') >= 2 
        @answer1 = "You are Kanye"
    end
    erb :results
    end
  end