require "spec_helper"

describe "Wheel" do
	let(:wheel1) { Wheel.new({rim: 26, tire: 1.5}) }
	let(:wheel2) { Wheel.new({}) }

	describe "#new" do
		it "returns an instance of the Wheel class" do
			wheel1.should be_an_instance_of Wheel
		end

		it "sets @rim to the value of the first arg" do
			wheel1.rim.should eq 26
		end

		it "sets @tire to the value of the second arg" do
			wheel1.tire.should eq 1.5
		end

		it "sets @rim and @tire to default values if the keys are not found" do
			wheel2.rim.should eq 29
			wheel2.tire.should eq 1.8
		end
	end

	describe "#diamter" do
		it "returns the wheel's diameter, by adding rim diameter to twice the tire diameter" do
			wheel1.diameter.should eq 29.0
			wheel2.diameter.should eq 32.6
		end
	end

	describe "#circumference" do
		it "returns the diameter * Pi" do
			wheel1.circumference.should eq 91.106
			wheel2.circumference.should eq 102.416
		end
	end
end