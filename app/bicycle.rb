require_relative "./gear"
require_relative "./wheel"

class Bicycle
	attr_reader :gear, :wheel

	def initialize(args)	
		@gear  = args[:gear]  || Gear.new({ chainring: args[:chainring], cog: args[:cog] })
		@wheel = args[:wheel] || Wheel.new({ rim: args[:rim], tire: args[:tire] }) 
	end

	def gear_inches
		ratio * diameter
	end

	def diameter
		wheel.diameter
	end

	def ratio
		gear.ratio
	end
end