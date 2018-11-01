class HelloController < ApplicationController
  before_action :check_logined, only: :view
  
  private
    def check_logined
      if session[:usr] then
        begin
          @usr = User.find(session[usr])
         
         rescue ActiveRecord::RecordNotFound
           reset_session
        end
      end
    end
    
    unless @usr
      flash[:referer] = request.fullapath
       redirect_to controller: :login, action: :index
    end

end
