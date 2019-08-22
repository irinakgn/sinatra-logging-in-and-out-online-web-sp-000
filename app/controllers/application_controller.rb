require_relative '../../config/environment'
class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/login' do
<<<<<<< HEAD
    user = User.find_by(username: params["username"], password: params["password"])
    if user
      session[:user_id] = user.id
      redirect to '/account'
    else
      erb :error
    end
  end

  get '/account' do
    erb :account
=======
    @user = User.find_by(username: params["username"],password: params["password"])
  if @user && @user.password == params[:password]
    session[:user_id] = @user.id
    redirect '/account'
  end
  erb :error

  end

  get '/account' do
    @current_user = User.find_by_id(session[:user_id])
    if @current_user
      erb :account
    else
      erb :error
    end
>>>>>>> 9ce6aad1c57a5d20a4ca22b3bbe1117305dd3cfe
  end

  get '/logout' do
    session.clear
    redirect to '/'
<<<<<<< HEAD
=======

>>>>>>> 9ce6aad1c57a5d20a4ca22b3bbe1117305dd3cfe
  end


end
