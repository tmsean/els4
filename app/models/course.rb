class Course < ActiveRecord::Base
	has_many :lessons
	has_many :words
	has_many :activities
end

