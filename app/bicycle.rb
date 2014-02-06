require_relative "./gear"
require_relative "./wheel"

class Bicycle
	attr_reader :gear, :wheel

	def initialize(args)
		args = defaults.merge(args)
		@gear  = args[:gear]  || Gear.new({ chainring: args[:chainring], cog: args[:cog] })
		@wheel = args[:wheel] || Wheel.new({ rim: args[:rim], tire: args[:tire] }) 
	end

	def gear_inches
		ratio * diameter
	end

	private
	
	def diameter
		wheel.diameter
	end

	def ratio
		gear.ratio
	end

	def defaults
  	{ rim: 25, tire: 1.0, chainring: 50, cog: 10 }
  end
end