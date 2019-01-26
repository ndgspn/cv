module Sessions
  module Destroy
    def self.call(session=[])
      session[:user_id] = nil
    end
  end
end
