class Project < ActiveRecord::Base
	belongs_to :user
	has_many :countertops
	accepts_nested_attributes_for :countertops, allow_destroy: true

end
