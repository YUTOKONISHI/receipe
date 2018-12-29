module ReceipesHelper
  def average_rate
     score = ReceipeEvaluation.where(receipe_id: params[:receipe_id]).average(:rating)
     
     return score
  end
  
   def receipe_create_or_update
    if !Receipe.exists?(user_id: session[:usr], id: params[:receipe_id])
      new_receipes_path
    else 
      update_receipe_path
    end
  end  
  
  def receipe_post_or_patch
    if !Receipe.exists?(user_id: session[:usr], id: params[:receipe_id])
      "POST"
    else 
      "PATCH"
    end
  end  
  
  
end
