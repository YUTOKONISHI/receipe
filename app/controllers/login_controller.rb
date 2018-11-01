class LoginController < ApplicationController
  def auth
    usr = User.find_by(last_name: params[:email]) 

    if usr && usr.authenticate(params[:password]) then
        reset_session
        sessin[:usr] = usr.id
        redirect_to params[:referer]
    else
         flash.now[:referer] = params[:referer]
         @error = 'メールアドレス/パスワードが間違っています。'
          render 'index'
    end
  end
end
