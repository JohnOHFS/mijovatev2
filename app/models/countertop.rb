class Countertop < ActiveRecord::Base
	belongs_to :countertype
	belongs_to :granitecolor
	belongs_to :marblecolor
end
