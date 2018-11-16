class UsersController < ApplicationController
  before_action :check_logined, only: :mypage
  before_action :set_user, only: [:mypage, :show, :edit, :update, :destroy]
  before_action :request_path
  def request_path
    @path = controller_path + '#' + action_name
      def @path.is(*str)
        str.map{|s| self.include?(s)}.include?(true)
      end
  end
  
  def mypage

  end

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
    @user.allergens_users.build
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
    @user.allergens_users.build
  end

  def confirm
    @user = User.new(user_params) #POSTされたパラメータの取得 
    if @user.invalid? #バリデーションチェックNGなら戻す
      render action: :new 
    else
    @user.image_path.cache! # 一時的アップロード(@userインスタンスには一時ディレクトリのパスが入る)
    end
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
     # パラメータで受け取ったキャッシュから画像を復元する
    @user.image_path.retrieve_from_cache! params[:cache][:image_path]
    respond_to do |format|
       if params[:back]
        format.html { render :new }
      elsif @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    # パラメータで受け取ったキャッシュから画像を復元する
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :first_name, :last_name, :password, :image_path, :registration, {:allergen_ids =>[]})
    end
    
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
