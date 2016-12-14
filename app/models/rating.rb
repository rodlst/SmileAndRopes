class Rating < ApplicationRecord
  belongs_to :rope
  in: 1..4

end
