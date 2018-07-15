require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    (params[:number].to_i**2).to_s
  end

  get '/say/number/:phrase' do
    @number = params[:number].to_i
    "#{params[:phrase]} * @number"
  end

end
