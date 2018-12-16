module ReceipeEvaluationsHelper
  def choose_create_or_update
    if !ReceipeEvaluation.exists?(user_id: session[:usr],receipe_id:@receipe.id)
      new_rating_receipe_path
    else 
      update_rating_receipe_path
    end
  end  
  
  def choose_post_or_put
    if !ReceipeEvaluation.exists?(user_id: session[:usr],receipe_id:@receipe.id)
      "POST"
    else 
      "PATCH"
    end
  end  
  
    
end
