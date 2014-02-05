class Wheel
	attr_reader :rim, :tire

	def initialize(rim, tire)
		@rim = rim
		@tire = tire
	end

	def diameter
		(rim + (tire * 2)).round(3)
	end
end
