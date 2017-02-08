class Measure < ActiveRecord::Base
	belongs_to :section
	has_many :beats
end
