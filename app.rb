require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :index
  end 
  
  get '/new' do
    erb :create_puppy
  end 
  
  post '/puppy' do 
    binding.pry
    @new_puppy = Puppy.new(params[:name], para,s[:breed], params[:age])
    erb :display_puppy
  end 
  
end
