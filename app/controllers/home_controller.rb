class HomeController < ApplicationController
  def index
   @search = Receipe.ransack(params[:q])  #追加
   @results = @search.result           #追加
  end
end
