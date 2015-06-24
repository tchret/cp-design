class Project < ActiveRecord::Base
  mount_uploader :banner, BannerUploader

  has_many :bottom_pictures, class_name: "Bottom", :dependent => :destroy
  has_many :slideshow_pictures, class_name: "Slideshow", :dependent => :destroy

  accepts_nested_attributes_for :bottom_pictures, allow_destroy: true
  accepts_nested_attributes_for :slideshow_pictures, allow_destroy: true

  validates_presence_of :title, :description

  scope :published, -> { where(published: true) }
  acts_as_list scope: [:description]

end
