class ReceipeCategory < ApplicationRecord
  belongs_to :receipe, optional: true
end
