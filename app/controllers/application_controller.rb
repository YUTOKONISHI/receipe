class ApplicationController < ActionController::Base
  def check_logined
      if session[:usr] then
        begin
          @user = User.find(session[:usr])
         
        rescue ActiveRecord::RecordNotFound
           reset_session
        end
      end
    
    unless @user
      flash[:referer] = request.fullpath
      redirect_to controller: :login, action: :index
    end
  end
  
  
end
