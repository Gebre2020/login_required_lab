module CurrentUserHelper

    def current_user
      if session[:name]
        User.find(session[:name])
      else
        nil
      end
    end

end