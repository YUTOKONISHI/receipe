class Bookmark < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :receipe, optional: true
end
