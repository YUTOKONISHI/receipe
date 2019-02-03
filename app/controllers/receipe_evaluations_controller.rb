class ReceipeEvaluationsController < ApplicationController
  before_action :set_receipe_evaluation, only: [:show, :edit, :destroy]

  
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
  #def edit
  #end

  # POST /receipe_evaluations
  # POST /receipe_evaluations.json
  def create
    session_user = session[:usr]
    receipe = Receipe.find(params[:receipe_id])
    user_rating = params[:rating]
    
    if ReceipeEvaluation.create(user_id: session_user, receipe_id: receipe.id, rating: user_rating)
      redirect_to receipe
    else
    
    end

  end

  # PATCH/PUT /receipe_evaluations/1
  # PATCH/PUT /receipe_evaluations/1.json
  def update
    session_user = session[:usr]
    receipe = Receipe.find(params[:receipe_id])
    user_rating = params[:rating]
    
    
    if ReceipeEvaluation.find_by(user_id: session_user, receipe_id: receipe.id,).update(rating: user_rating)
      redirect_to receipe
    else
    
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
