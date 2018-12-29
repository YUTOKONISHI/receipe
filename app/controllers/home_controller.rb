class HomeController < ApplicationController
    
  def index
   @allergens = Allergen.all
   @receipe_category = ReceipeCategory.all
    
    
    if session[:usr]
      
      @ingredient = Ingredient.includes(:allergens).where(allergens: { id: AllergensUser.where(user_id: session[:usr]).pluck(:allergen_id) })
      @a = Receipe.where.not(id: @ingredient.pluck(:receipe_id))
      #@a = Receipe.distinct.joins(:ingredients).where.not(ingredients: { id: @ingredient.pluck(:id)})#.ransack(params[:q])
      @search = @a.ransack(params[:q])
      #@search = Receipe.includes(ingredients: :allergens).where.not(allergens: { id: AllergensUser.where(user_id: session[:usr]).pluck(:allergen_id) }).ransack(params[:q])
      #Blog.includes(entries: :comments).where(comments: { id: [*1..3] })
      
    else
      if params[:q].nil?
        @search = Receipe.ransack(params[:q])
      else
        @cache = params[:q].delete(:ingredients_allergens_id_not_eq_all)
        
        logger.debug(@cache)
        
        if @cache.length == 1
          @search = Receipe.ransack(params[:q])
            logger.debug(1)
        else 
          @ingredient = Ingredient.includes(:allergens).where(allergens: { id: @cache})
          @a = Receipe.where.not(id: @ingredient.pluck(:receipe_id))
          @search = @a.ransack(params[:q]) 
           logger.debug(2)
        end
      end
    end
 
   
   
   
      if params[:q].nil?
        @results = Receipe.none
      else
        @results =  @search.result(distinct: true)
        #@results =  @search.result(distinct: true)
      end
    
  end
  
  
  
end
