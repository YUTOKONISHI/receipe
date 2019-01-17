module ReceipesHelper
  def average_rate
     score = ReceipeEvaluation.where(receipe_id: params[:receipe_id]).average(:rating)
     
     return score
  end
  
   def receipe_create_or_update
    if !Receipe.exists?(user_id: session[:usr], id: params[:receipe_id])
      receipes_path
    else 
      receipe_path
    end
  end  
  
  def receipe_post_or_put
    if !Receipe.exists?(user_id: session[:usr], id: params[:receipe_id])
      "POST"
    else 
      "PUT"
    end
  end  
  
  
end
