require "spec_helper"

describe "Gear" do
	let (:gear1) { Gear.new(52, 11) }
	describe "new" do
		it "should return an instance of the Gear class" do
			gear1.should be_an_instance_of Gear
		end

		it "should initialize @chainring with the value of the first arg" do
			gear1.chainring.should eq 52
		end

		it "should initialize @cog with the value of the second arg" do
			gear1.cog.should eq 11
		end

		describe "#ratio" do
			it "should return the gear ratio by dividing chainring by the cog" do
				gear1.ratio.should eq 4.727 
			end
		end
	end
end