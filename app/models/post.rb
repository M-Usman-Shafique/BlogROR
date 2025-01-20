# post.rb
class Post < ApplicationRecord
    has_one_attached :image
  
    validate :caption_or_image_present
  
    private
  
    def caption_or_image_present
      if caption.blank? && !image.attached?
        errors.add(:base, "Either text or image must be present.")
      end
    end
  end
  