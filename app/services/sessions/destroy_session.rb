module Sessions
  class DestroySession
    def initialize(session=[])
      @session = session
    end

    def call
      destroy_session
    end

    private

    attr_accessor :session

    def destroy_session
      session[:user_id] = nil
    end
  end
end
