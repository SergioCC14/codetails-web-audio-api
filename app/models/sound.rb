class Sound < ActiveRecord::Base

  scope :instafuns, -> { where('title IS NOT NULL') }
  scope :recorded, -> { where('title IS NULL') }

  has_attached_file :audio

end
