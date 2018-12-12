class CookingStepsController < ApplicationController
  before_action :set_cooking_step, only: [:show, :edit, :update, :destroy]

  # GET /cooking_steps
  # GET /cooking_steps.json
  def index
    @cooking_steps = CookingStep.all
  end

  # GET /cooking_steps/1
  # GET /cooking_steps/1.json
  def show
  end

  # GET /cooking_steps/new
  def new
    @cooking_step = CookingStep.new
  end

  # GET /cooking_steps/1/edit
  def edit
  end

  # POST /cooking_steps
  # POST /cooking_steps.json
  def create
    @cooking_step = CookingStep.new(cooking_step_params)

    respond_to do |format|
      if @cooking_step.save
        format.html { redirect_to @cooking_step, notice: 'Cooking step was successfully created.' }
        format.json { render :show, status: :created, location: @cooking_step }
      else
        format.html { render :new }
        format.json { render json: @cooking_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cooking_steps/1
  # PATCH/PUT /cooking_steps/1.json
  def update
    respond_to do |format|
      if @cooking_step.update(cooking_step_params)
        format.html { redirect_to @cooking_step, notice: 'Cooking step was successfully updated.' }
        format.json { render :show, status: :ok, location: @cooking_step }
      else
        format.html { render :edit }
        format.json { render json: @cooking_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cooking_steps/1
  # DELETE /cooking_steps/1.json
  def destroy
    @cooking_step.destroy
    respond_to do |format|
      format.html { redirect_to cooking_steps_url, notice: 'Cooking step was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cooking_step
      @cooking_step = CookingStep.find(params[:cooking_step_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cooking_step_params
      params.require(:cooking_step).permit(:receipe_id, :number, :description, :image_path)
    end
end
