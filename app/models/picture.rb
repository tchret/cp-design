class Picture < ActiveRecord::Base
  belongs_to :project

  validates_presence_of :picture
  validates_presence_of :type

  #scope :bottom_pictures, -> { where(type: 'bottom') }
  #scope :slideshow_pictures, -> { where(type: 'slideshow') }
end
