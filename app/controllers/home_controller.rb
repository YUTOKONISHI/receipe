class HomeController < ApplicationController
      
  def index
   #@allergens = Allergen.all
   @receipe_category = ReceipeCategory.all
       
    if session[:usr]
       @allergens = Allergen.where(allergens: { id: AllergensUser.where(user_id: session[:usr]).pluck(:allergen_id) })
      @ingredient = Ingredient.includes(:allergens).where(allergens: { id: AllergensUser.where(user_id: session[:usr]).pluck(:allergen_id) })
      #代替食品についても上と類似の記載をする
      @a = Receipe.where.not(id: @ingredient.pluck(:receipe_id))
      #@aの結果に代替食品の結果を結合(union)
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
        if @cache.nil?
         
        elsif @cache.length == 1 
          @search = Receipe.ransack(params[:q])
        else 
          @allergens = Allergen.where(allergens: { id: @cache})
          @ingredient = Ingredient.includes(:allergens).where(allergens: { id: @cache})
          @a = Receipe.where.not(id: @ingredient.pluck(:receipe_id))
          @search = @a.ransack(params[:q])
        end
      end
    end
    
   
      if params[:q].nil?
        @results = Receipe.none
      else
        @results =  @search.result(distinct: true)#.paginate(:page=> params[:page], :per_page => 1 )
        #@results =  @search.result(distinct: true)
      end
    
  end
  

  
end
