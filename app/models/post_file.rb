class PostFile < ApplicationRecord

  belongs_to :post
  attachment :image

end
