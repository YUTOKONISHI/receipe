class ApplicationController < ActionController::Base
  def check_logined
        #logger.debug(session[:usr])
        #logger.debug(params[:user_id].to_i)
        #logger.debug(session[:usr] == params[:user_id].to_i)
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
