class HomeController < ApplicationController
    
  def index
   @allergens = Allergen.all
   @receipe_category = ReceipeCategory.all
   @search = Receipe.ransack(params[:q])
    
   @results = 
   if params[:q].nil?
     Receipe.none
   else
       @search.result(distinct: true).includes(:ingredients)
   end
   
   
  end
  
  
  
end
