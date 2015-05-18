class Sound < ActiveRecord::Base

  scope :instafuns, -> { where('title IS NOT NULL') }

  has_attached_file :audio

end
