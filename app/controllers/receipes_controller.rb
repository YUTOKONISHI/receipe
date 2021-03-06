class ReceipesController < ApplicationController
  before_action :check_logined, only: [:new, :edit, :update, :destroy]
  before_action :set_receipe, only: [:show, :edit, :update, :destroy]

  

  # GET /receipes
  # GET /receipes.json
  def index
    @receipes = Receipe.all
  end

  # GET /receipes/1
  # GET /receipes/1.json
  def show
    
    @receipe = Receipe.find(params[:receipe_id])
    @receipe_category = ReceipeCategory.find_by(id:  @receipe.receipe_category_id)
    @ingredients = @receipe.ingredients
    @cooking_steps = @receipe.cooking_steps
  end

  # GET /receipes/new
  def new
    @receipe = Receipe.new
    @ingredient = @receipe.ingredients.build
    @receipe.cooking_steps.build
    @user = User.find(params[:user_id])
    @ingredient.build_replaced_ingredient
  end
 
  def edit
    @receipe = Receipe.find(params[:receipe_id])
    @ingredient_list = @receipe.ingredients
    
  end

  # POST /receipes
  # POST /receipes.json
  def create
    @receipe = Receipe.new(receipe_params)
    #@user = User.find(params[:user_id])
    logger.debug(receipe_params)
    respond_to do |format|
      if @receipe.save
        format.html { redirect_to @receipe, notice: 'レシピを投稿しました' }
        format.json { render :show, status: :created, location: @receipe }
      else
        format.html { render :new }
        format.json { render json: @receipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /receipes/1
  # PATCH/PUT /receipes/1.json
  def update
    respond_to do |format|
      if @receipe.update(receipe_params)
        format.html { redirect_to @receipe, notice: 'レシピを更新しました' }
        format.json { render :show, status: :ok, location: @receipe }
      else
        format.html { render :edit }
        format.json { render json: @receipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receipes/1
  # DELETE /receipes/1.json
  def destroy
    @receipe.destroy
    respond_to do |format|
      format.html { redirect_to receipes_url, notice: 'レシピは削除されました' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_receipe
      @receipe = Receipe.find(params[:receipe_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def receipe_params
      params.require(:receipe).permit(:user_id, :receipe_category_id, :title, :introduction, :image_path,  
        ingredients_attributes: [:id, :receipe_id, :name, :quantity, {:allergen_ids =>[]},:_destroy, 
        replaced_ingredient_attributes: [:id, :ingredient_id, :name, :quantity, {:allergen_ids =>[]}, :_destroy]],
        cooking_steps_attributes: [:id, :receipe_id, :number, :description, :image_path, :_destroy],
        receipe_evaluations_attributes: [:id, :receipe_id, :user_id, :rating, :_destroy]
        )
    end
end
