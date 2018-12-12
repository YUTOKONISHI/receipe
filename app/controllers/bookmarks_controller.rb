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
    #@bookmark = Bookmark.new(user_id: @user_id, receipe_id: @receipe_id)
    
    if Bookmark.create(user_id: session_user, receipe_id: receipe.id)
      redirect_to receipe
    else
     
    end
  #  
  #  @bookmark = Bookmark.new(bookmark_params)
  #
  #  respond_to do |format|
  #    if @bookmark.save
  #      format.html { redirect_to @bookmark, notice: 'Bookmark was successfully created.' }
  #      format.json { render :show, status: :created, location: @bookmark }
  #    else
  #      format.html { render :new }
  #      format.json { render json: @bookmark.errors, status: :unprocessable_entity }
  #    end
  #  end
  end

  # PATCH/PUT /bookmarks/1
  # PATCH/PUT /bookmarks/1.json
  #def update
  #  respond_to do |format|
  #    if @bookmark.update(bookmark_params)
  #      format.html { redirect_to @bookmark, notice: 'Bookmark was successfully updated.' }
  #      format.json { render :show, status: :ok, location: @bookmark }
  #    else
  #      format.html { render :edit }
  #      format.json { render json: @bookmark.errors, status: :unprocessable_entity }
  #    end
  #  end
  #end

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
    
  #  @bookmark = Bookmark.find(params[:bookmark_id])
  #  if @bookmark.destroy
      #削除に成功した場合、ログインしているユーザの詳細画面に戻る
  #    redirect_to user_path(session[:usr])
  #  end
    #@bookmark.destroy
    #respond_to do |format|
    #  format.html { redirect_to bookmarks_url, notice: 'Bookmark was successfully destroyed.' }
    #  format.json { head :no_content }
    #end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookmark
      #@bookmark = Bookmark.find(params[:bookmark_id])
      @user  = User.find(session[:usr])
      @receipe = Receipe.find(params[:receipe_id])

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bookmark_params
      params.require(:bookmark).permit(:user_id, :receipe_id)
    end
end
