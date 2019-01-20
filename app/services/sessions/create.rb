module Sessions
  module Create
    def self.call(params)
      username = params[:username]
      password = params[:password]

      user = User.find_by(username: username)
      if user && user.authenticate(password)
        session[:user_id] = user.id
      end
    end
  end
end
