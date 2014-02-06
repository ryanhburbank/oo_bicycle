class Gear
	attr_reader :chainring, :cog

	def initialize(args)
		@chainring = args[:chainring]
		@cog       = args[:cog]
	end

	def ratio
		(chainring / cog.to_f).round(3)
	end
end