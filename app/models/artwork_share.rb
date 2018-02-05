class ArtworkShare < ApplicationRecord
  validates :artwork_id, null: false 
  validates :viewer_id, null: false
  
  belongs_to :artwork,
  foreign_key: :artwork_id,
  primary_key: :id,
  class_name: :Artwork
  
  belongs_to :viewer,
  foreign_key: :viewer_id,
  primary_key: :id,
  class_name: :User
  
end 