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
  attr_accessible :name, :cartype, :image, :handling, :interior, :legroom, :looks, :mpg, :price, :id

  scope :price_less_than, lambda { |value| where('price <=(?)', value) if value.present? }
  scope :mpg_greater_than, lambda { |value| where('mpg >= (?)', value) if value.present? }
  scope :handling_greater_than, lambda { |value| where('handling >= (?)', value) if value.present? }
  scope :interior_greater_than, lambda { |value| where('interior >= (?)', value) if value.present? }
  scope :looks_greater_than, lambda { |value| where('looks >= (?)', value) if value.present? }
  scope :legroom_greater_than, lambda { |value| where('legroom >= (?)', value) if value.present? }

end
