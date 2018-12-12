class AllergensReplacedIngredientsController < ApplicationController
  before_action :set_allergens_replaced_ingredient, only: [:show, :edit, :update, :destroy]

  # GET /allergens_replaced_ingredients
  # GET /allergens_replaced_ingredients.json
  def index
    @allergens_replaced_ingredients = AllergensReplacedIngredient.all
  end

  # GET /allergens_replaced_ingredients/1
  # GET /allergens_replaced_ingredients/1.json
  def show
  end

  # GET /allergens_replaced_ingredients/new
  def new
    @allergens_replaced_ingredient = AllergensReplacedIngredient.new
  end

  # GET /allergens_replaced_ingredients/1/edit
  def edit
  end

  # POST /allergens_replaced_ingredients
  # POST /allergens_replaced_ingredients.json
  def create
    @allergens_replaced_ingredient = AllergensReplacedIngredient.new(allergens_replaced_ingredient_params)

    respond_to do |format|
      if @allergens_replaced_ingredient.save
        format.html { redirect_to @allergens_replaced_ingredient, notice: 'Allergens replaced ingredient was successfully created.' }
        format.json { render :show, status: :created, location: @allergens_replaced_ingredient }
      else
        format.html { render :new }
        format.json { render json: @allergens_replaced_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /allergens_replaced_ingredients/1
  # PATCH/PUT /allergens_replaced_ingredients/1.json
  def update
    respond_to do |format|
      if @allergens_replaced_ingredient.update(allergens_replaced_ingredient_params)
        format.html { redirect_to @allergens_replaced_ingredient, notice: 'Allergens replaced ingredient was successfully updated.' }
        format.json { render :show, status: :ok, location: @allergens_replaced_ingredient }
      else
        format.html { render :edit }
        format.json { render json: @allergens_replaced_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /allergens_replaced_ingredients/1
  # DELETE /allergens_replaced_ingredients/1.json
  def destroy
    @allergens_replaced_ingredient.destroy
    respond_to do |format|
      format.html { redirect_to allergens_replaced_ingredients_url, notice: 'Allergens replaced ingredient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_allergens_replaced_ingredient
      @allergens_replaced_ingredient = AllergensReplacedIngredient.find(params[:allergens_replaced_ingredients_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def allergens_replaced_ingredient_params
      params.require(:allergens_replaced_ingredient).permit(:allergen_id, :replaced_ingredient_id)
    end
end
