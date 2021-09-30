class ApplicationController < ActionController::Base

    def authorize_admin!
        unless current_user.admin?
            flash.notice = "Tienes que ser Admin :("
            redirect_to root_path
        end
    end

end
