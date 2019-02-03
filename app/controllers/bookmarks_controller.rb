class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:show, :edit, :update, :destroy]



  # GET /bookmarks
  # GET /bookmarks.json
  def index
    @bookmarks = Bookmark.all
  end

  # GET /bookmarks/1
  # GET /bookmarks/1.json
  #def show
  #end

  # GET /bookmarks/new
  #def new
  #  @bookmark = Bookmark.new
  #end

  # GET /bookmarks/1/edit
  #def edit
  #end

  # POST /bookmarks
  # POST /bookmarks.json
  def create
    session_user = session[:usr]
    receipe = Receipe.find(params[:receipe_id])
    
    if Bookmark.create(user_id: session_user, receipe_id: receipe.id)
      redirect_to receipe
    else
     
    end

  end

  # DELETE /bookmarks/1
  # DELETE /bookmarks/1.json
  def destroy
    session_user = session[:usr]
    receipe = Receipe.find(params[:receipe_id])
    
    if bookmark = Bookmark.find_by(user_id: session_user, receipe_id: receipe.id)
      bookmark.delete
      redirect_to receipe
    else
     
    end
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookmark
      @user  = User.find(session[:usr])
      @receipe = Receipe.find(params[:receipe_id])

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bookmark_params
      params.require(:bookmark).permit(:user_id, :receipe_id)
    end
end
