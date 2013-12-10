require 'spec_helper'

describe Santa::Base do
  it "returns a purpose" do
    Santa::Base.purpose.should eql("To make it simple for a group of friends or a find quickly create (hopefully) stress free Secret Santa assignments")
  end
end