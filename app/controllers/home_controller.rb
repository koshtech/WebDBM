class HomeController < ApplicationController
  def index
  end

  def databases
    db = database_auth(params[:username], params[:password])
    @database = db.execute("show databases;")
  end

  private

  def database_auth(username, password)
    Datab.new(username, password)
  end
end
