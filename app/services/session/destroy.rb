module Session
  class Destroy
    def initialize(session={})
      @session = session
    end

    def call
      destroy
    end

    private

    attr_accessor :session

    def destroy
      session[:user_id] = nil
    end
  end
end
