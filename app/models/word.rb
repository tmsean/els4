class Word < ActiveRecord::Base
	has_many :results

	belongs_to :course
end

