module AuthHelper
    def log_in(user)
        auth[:user_id] = user.id
    end
    def current_user
        if auth[:user_id]
          @current_user ||= User.find_by(id: auth[:user_id])
        end
    end
    def current_user?(user)
        user == current_user
    end
    def logged_in?
        !current_user.nil?
    end
    def log_out
        auth.delete(:user_id)
        @current_user = nil
    end
end