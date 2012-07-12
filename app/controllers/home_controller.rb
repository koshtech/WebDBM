class HomeController < ApplicationController
  def index
  end

  def login
    database_auth(params[:username], params[:password])
  end

  private

  def database_auth(username, password)
    db_auth = DatabaseAuth.new(username, password)
    if db_auth.connected?
      redirect '/databases'
    else
      redirect '/'
    end
  end
end
