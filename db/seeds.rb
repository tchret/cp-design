# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Metum.instance.update_attributes(
  { slogan: "Le commerce de mass market devient le commerce de précision.",
    site_banner: 'https://s3.amazonaws.com/StartupStockPhotos/20140808_StartupStockPhotos/55.jpg',

  }
)
