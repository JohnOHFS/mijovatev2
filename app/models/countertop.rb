class Countertop < ActiveRecord::Base
	belongs_to :countertype
	belongs_to :granitecolor
end
