class LoginController < ApplicationController
  def auth
    usr = User.find_by(email: params[:email]) 

    if usr && usr.authenticate(params[:password]) then
        reset_session
        session[:usr] = usr.id
        if params[:referer].empty?
            #redirect_to params[:referer]
            redirect_to "/users/mypage"  #idを渡すときには注意 route.rbの記載とurlを合わせる
        else
            redirect_to params[:referer]
        end
    else
         flash.now[:referer] = params[:referer]
         @error = 'メールアドレス/パスワードが間違っています。'
          render 'index'
    end
  end
  
  def logout
    reset_session
    redirect_to "/login/index"
  end
  
  
  
end
