class HomeController < ApplicationController
  def index
  end

  def login
    database_auth(params[:username], params[:password])
  end

  private

  def database_auth(username, password)
    db_auth = Datab.new(username, password)
    redirect_to '/'
  end
end
