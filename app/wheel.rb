class Wheel
	attr_reader :rim, :tire

	def initialize(args)
		@rim  = args[:rim]  || 29
		@tire = args[:tire] || 1.8
	end

	def diameter
		(rim + (tire * 2)).round(3)
	end

	def circumference
		(diameter * Math::PI).round(3)
	end
end
