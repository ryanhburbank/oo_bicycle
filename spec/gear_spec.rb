require "spec_helper"

describe "Gear" do
	let (:gear1) { Gear.new({chainring: 52, cog: 11}) }
	let (:gear2) { Gear.new({}) }
	describe "new" do
		it "should return an instance of the Gear class" do
			gear1.should be_an_instance_of Gear
			gear2.should be_an_instance_of Gear
		end

		it "should initialize @chainring with the value of the first arg" do
			gear1.chainring.should eq 52
		end

		it "sets chainring and cog to the default values if the keys are not found" do
			gear2.chainring.should eq 40
			gear2.cog.should eq 18
		end

		it "should initialize @cog with the value of the second arg" do
			gear1.cog.should eq 11
		end

		describe "#ratio" do
			it "should return the gear ratio by dividing chainring by the cog" do
				gear1.ratio.should eq 4.727
				gear2.ratio.should eq 2.222
			end
		end
	end
end