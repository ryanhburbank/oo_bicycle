class Gear
	attr_reader :chainring, :cog

	def initialize(args)
		args = defaults.merge(args)
		@chainring = args[:chainring]
		@cog       = args[:cog]
	end

	def ratio
		(chainring / cog.to_f).round(3)
	end

	private

	def defaults
		{ chainring: 40, cog: 18 }
	end
end