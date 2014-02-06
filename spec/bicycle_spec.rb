require "spec_helper"

describe "Bicycle" do
	let (:bike1) { Bicycle.new({chainring: 52, cog: 11, rim: 26, tire: 1.5 }) }
	let (:bike2) { Bicycle.new( { gear: Gear.new({ chainring: 52, cog: 11 }), 
		                            wheel: Wheel.new({ rim: 26, tire: 1.5 }) } )}

	describe "#new" do
		it "returns an instance of the Bicycle class" do
			bike1.should be_an_instance_of Bicycle
			bike2.should be_an_instance_of Bicycle
		end
	end

	describe "#gear_inches" do
		it "returns wheel diameter divided by gear ratio" do
			bike1.gear_inches.should eq 137.083
			bike2.gear_inches.should eq 137.083
		end
	end 
end