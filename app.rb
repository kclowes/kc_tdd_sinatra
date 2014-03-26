require 'sinatra'

class App < Sinatra::Application
  ARR = []
  get '/' do
    erb :index, :locals => {:tasks => ARR}
  end

  get '/tasks/new' do
    erb :new_tasks
  end

  post '/tasks/new' do
    ARR << params[:tasks]
    redirect '/'
  end

  #get '/' do
  #  erb :index
  #end
end