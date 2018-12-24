module ReceipesHelper
  def average_rate
     score = ReceipeEvaluation.where(receipe_id: params[:receipe_id]).average(:rating)
     
     return score
  end
  
end
