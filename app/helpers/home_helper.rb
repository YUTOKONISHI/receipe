module HomeHelper
  def category_name(category_id)
     category = ReceipeCategory.find_by(id: category_id)
     
     return category.name
  end
  
  def average_rate_for_search_result(search_id)
     
     score = ReceipeEvaluation.where(receipe_id: search_id).average(:rating)
     
     if score.nil?
       
     else
       return score
     end
     
  end
  
  
end
