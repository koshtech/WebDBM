class Datab < ActiveRecord::Base

  def initialize(user, pass)
    @user = user
    @pass = pass
  end

  def execute(cmd)
    #self.connect
    @connection.connection.execute(cmd)
  end

  def connected?
    @is_connected
  end

  private

  def connect
    @connection = ActiveRecord::Base.establish_connection :username => @user,
      :password => @pass,
      :adapter => 'mysql2',
      :database => '',
      :host => "localhost",
      :port => 3306

    @is_connected = !@connection.nil?
  end

end
