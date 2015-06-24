# This class holds meta information for this website :
#
# - headline/slogan
# - banner picture
# - about page content
#

class Metum < ActiveRecord::Base
  mount_uploader :site_banner, BannerUploader

  def self.instance
    first || create
  end
end
