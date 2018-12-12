class ReplacedIngredientsController < ApplicationController
  before_action :set_replaced_ingredient, only: [:show, :edit, :update, :destroy]

  # GET /replaced_ingredients
  # GET /replaced_ingredients.json
  def index
    @replaced_ingredients = ReplacedIngredient.all
  end

  # GET /replaced_ingredients/1
  # GET /replaced_ingredients/1.json
  def show
  end

  # GET /replaced_ingredients/new
  def new
    @replaced_ingredient = ReplacedIngredient.new
  end

  # GET /replaced_ingredients/1/edit
  def edit
  end

  # POST /replaced_ingredients
  # POST /replaced_ingredients.json
  def create
    @replaced_ingredient = ReplacedIngredient.new(replaced_ingredient_params)

    respond_to do |format|
      if @replaced_ingredient.save
        format.html { redirect_to @replaced_ingredient, notice: 'Replaced ingredient was successfully created.' }
        format.json { render :show, status: :created, location: @replaced_ingredient }
      else
        format.html { render :new }
        format.json { render json: @replaced_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /replaced_ingredients/1
  # PATCH/PUT /replaced_ingredients/1.json
  def update
    respond_to do |format|
      if @replaced_ingredient.update(replaced_ingredient_params)
        format.html { redirect_to @replaced_ingredient, notice: 'Replaced ingredient was successfully updated.' }
        format.json { render :show, status: :ok, location: @replaced_ingredient }
      else
        format.html { render :edit }
        format.json { render json: @replaced_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /replaced_ingredients/1
  # DELETE /replaced_ingredients/1.json
  def destroy
    @replaced_ingredient.destroy
    respond_to do |format|
      format.html { redirect_to replaced_ingredients_url, notice: 'Replaced ingredient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_replaced_ingredient
      @replaced_ingredient = ReplacedIngredient.find(params[:replaced_ingredient_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def replaced_ingredient_params
      params.require(:replaced_ingredient).permit(:name, :quantity, :ingredient_id)
    end
end
