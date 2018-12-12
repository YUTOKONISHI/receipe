class ReceipeEvaluationsController < ApplicationController
  before_action :set_receipe_evaluation, only: [:show, :edit, :update, :destroy]

  # GET /receipe_evaluations
  # GET /receipe_evaluations.json
  def index
    @receipe_evaluations = ReceipeEvaluation.all
  end

  # GET /receipe_evaluations/1
  # GET /receipe_evaluations/1.json
  def show
  end

  # GET /receipe_evaluations/new
  def new
    @receipe_evaluation = ReceipeEvaluation.new
  end

  # GET /receipe_evaluations/1/edit
  def edit
  end

  # POST /receipe_evaluations
  # POST /receipe_evaluations.json
  def create
    @receipe_evaluation = ReceipeEvaluation.new(receipe_evaluation_params)

    respond_to do |format|
      if @receipe_evaluation.save
        format.html { redirect_to @receipe_evaluation, notice: 'Receipe evaluation was successfully created.' }
        format.json { render :show, status: :created, location: @receipe_evaluation }
      else
        format.html { render :new }
        format.json { render json: @receipe_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /receipe_evaluations/1
  # PATCH/PUT /receipe_evaluations/1.json
  def update
    respond_to do |format|
      if @receipe_evaluation.update(receipe_evaluation_params)
        format.html { redirect_to @receipe_evaluation, notice: 'Receipe evaluation was successfully updated.' }
        format.json { render :show, status: :ok, location: @receipe_evaluation }
      else
        format.html { render :edit }
        format.json { render json: @receipe_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receipe_evaluations/1
  # DELETE /receipe_evaluations/1.json
  def destroy
    @receipe_evaluation.destroy
    respond_to do |format|
      format.html { redirect_to receipe_evaluations_url, notice: 'Receipe evaluation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_receipe_evaluation
      @receipe_evaluation = ReceipeEvaluation.find(params[:receipe_evaluation_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def receipe_evaluation_params
      params.require(:receipe_evaluation).permit(:user_id, :receipe_id, :rating)
    end
end