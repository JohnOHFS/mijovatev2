class Countertop < ActiveRecord::Base
	belongs_to :countertype
	belongs_to :granitecolor
	belongs_to :marblecolor
	belongs_to :soapstonecolor
	belongs_to :quartzcolor
end
