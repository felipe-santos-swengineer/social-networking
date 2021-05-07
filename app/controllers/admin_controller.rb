class AdminController = ApplicationController
    #toda vez que controller for cahamdo, essa funcção será ativada
    before_action :authenticate_admin


    def authenticate_admin
        
        redirect_to new_admin_session_path unless current_admin?

    end

    def current_admin?
        
        #current admin é uma função do devise que retorna boolean
        if current_admin.present?
            true
        else
            false
        end

    end



end