module BookmarksHelper
  def bookmark_icon(receipe, user)
    if user
      if user.bookmarks.exists?(receipe: receipe)
        '<i class="fa fa-bookmark fa-2x"></i>'
      else
        '<i class="fa fa-bookmark fa-bookmark-o fa-2x"></i>'
      end
    end
  end
end
