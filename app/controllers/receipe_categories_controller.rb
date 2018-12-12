class ReceipeCategoriesController < ApplicationController
  before_action :set_receipe_category, only: [:show, :edit, :update, :destroy]

  # GET /receipe_categories
  # GET /receipe_categories.json
  def index
    @receipe_categories = ReceipeCategory.all
  end

  # GET /receipe_categories/1
  # GET /receipe_categories/1.json
  def show
  end

  # GET /receipe_categories/new
  def new
    @receipe_category = ReceipeCategory.new
  end

  # GET /receipe_categories/1/edit
  def edit
  end

  # POST /receipe_categories
  # POST /receipe_categories.json
  def create
    @receipe_category = ReceipeCategory.new(receipe_category_params)

    respond_to do |format|
      if @receipe_category.save
        format.html { redirect_to @receipe_category, notice: 'Receipe category was successfully created.' }
        format.json { render :show, status: :created, location: @receipe_category }
      else
        format.html { render :new }
        format.json { render json: @receipe_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /receipe_categories/1
  # PATCH/PUT /receipe_categories/1.json
  def update
    respond_to do |format|
      if @receipe_category.update(receipe_category_params)
        format.html { redirect_to @receipe_category, notice: 'Receipe category was successfully updated.' }
        format.json { render :show, status: :ok, location: @receipe_category }
      else
        format.html { render :edit }
        format.json { render json: @receipe_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receipe_categories/1
  # DELETE /receipe_categories/1.json
  def destroy
    @receipe_category.destroy
    respond_to do |format|
      format.html { redirect_to receipe_categories_url, notice: 'Receipe category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_receipe_category
      @receipe_category = ReceipeCategory.find(params[:receipe_category_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def receipe_category_params
      params.require(:receipe_category).permit(:name)
    end
end
