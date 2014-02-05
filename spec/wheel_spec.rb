require "spec_helper"

describe "Wheel" do
	let(:wheel1) { Wheel.new(26, 1.5) }

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
	end

	describe "#diamter" do
		it "returns the wheel's diameter, by adding rim diameter to twice the tire diameter" do
			wheel1.diameter.should eq 29.0
		end
	end
end