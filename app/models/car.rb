# == Schema Information
#
# Table name: cars
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  mpg        :integer
#  price      :integer
#  handling   :integer
#  interior   :integer
#  looks      :integer
#  legroom    :integer
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Car < ActiveRecord::Base
  attr_accessible :name, :image, :handling, :interior, :legroom, :looks, :mpg, :price
end
