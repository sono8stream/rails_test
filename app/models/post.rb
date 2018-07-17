class Post < ApplicationRecord
  belongs_to :topic

  mount-uploader :image,  ImageUploader
end
