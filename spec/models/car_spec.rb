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

require 'spec_helper'

describe Car do
  pending "add some examples to (or delete) #{__FILE__}"
end
