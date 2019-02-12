module Sessions
  class Create
    def initialize(params, session=[])
      @username = params[:username]
      @password = params[:password]
      @session  = session
    end

    def call
      user_authenticate
    end

    private

    attr_accessor :username, :password, :session

    def user_authenticate
      if user && user.authenticate(password)
        session[:user_id] = user.id
      end
    end

    def user
      @user ||= User.find_by(username: username)
    end

  end
end
