class Vehicle < ApplicationRecord

  has_many :drivers, class_name: Driver
  
  #validates :name, presence :true
end
