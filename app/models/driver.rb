class Driver < ApplicationRecord

  belongs_to :vehicles, class_name: Vehicle

  #validates :tc_no, presence: true
end
