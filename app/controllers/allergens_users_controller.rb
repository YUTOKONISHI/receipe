class AllergensUsersController < ApplicationController
  before_action :set_allergens_user, only: [:show, :edit, :update, :destroy]

  # GET /allergens_users
  # GET /allergens_users.json
  def index
    @allergens_users = AllergensUser.all
  end

  # GET /allergens_users/1
  # GET /allergens_users/1.json
  def show
  end

  # GET /allergens_users/new
  def new
    @allergens_user = AllergensUser.new
  end

  # GET /allergens_users/1/edit
  def edit
  end

  # POST /allergens_users
  # POST /allergens_users.json
  def create
    @allergens_user = AllergensUser.new(allergens_user_params)

    respond_to do |format|
      if @allergens_user.save
        format.html { redirect_to @allergens_user, notice: 'Allergens user was successfully created.' }
        format.json { render :show, status: :created, location: @allergens_user }
      else
        format.html { render :new }
        format.json { render json: @allergens_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /allergens_users/1
  # PATCH/PUT /allergens_users/1.json
  def update
    respond_to do |format|
      if @allergens_user.update(allergens_user_params)
        format.html { redirect_to @allergens_user, notice: 'Allergens user was successfully updated.' }
        format.json { render :show, status: :ok, location: @allergens_user }
      else
        format.html { render :edit }
        format.json { render json: @allergens_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /allergens_users/1
  # DELETE /allergens_users/1.json
  def destroy
    @allergens_user.destroy
    respond_to do |format|
      format.html { redirect_to allergens_users_url, notice: 'Allergens user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_allergens_user
      @allergens_user = AllergensUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def allergens_user_params
      params.require(:allergens_user).permit(:user_id, :allergen_id)
    end
end
